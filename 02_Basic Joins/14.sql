-- Confirmation Rate
/*
https://leetcode.com/problems/confirmation-rate/description/?envType=study-plan-v2&envId=top-sql-50
*/

/*
✅ Step-by-Step Explanation
🔹 LEFT JOIN
LEFT JOIN Confirmations

Why?
Because:

users with no confirmations must also appear
🔹 SUM(c.action = 'confirmed')
c.action = 'confirmed'

returns:

1 → confirmed
0 → timeout

So:

SUM(...)

counts confirmed messages.

🔹 COUNT(c.action)

Counts:

total confirmation requests
🔹 IFNULL(...,0)

If user has:

no confirmation rows

division becomes NULL.

So:

IFNULL(...,0)

makes rate:

0
🔹 ROUND(...,2)

Rounds answer to:

2 decimal places
✅ Example
action
confirmed
timeout
confirmed

Confirmed:

2

Total:

3

Rate:

2/3 = 0.67
🔥 Important Interview Insight

Using:

SUM(condition)

is a very common SQL trick for counting matching rows.
*/

SELECT 
    s.user_id,
    
    ROUND(
        IFNULL(
            SUM(c.action = 'confirmed') / COUNT(c.action),
            0
        ),
        2
    ) AS confirmation_rate

FROM Signups s

LEFT JOIN Confirmations c
ON s.user_id = c.user_id

GROUP BY s.user_id;