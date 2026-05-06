-- Rising Temperature
/*
https://leetcode.com/problems/rising-temperature/description/?envType=study-plan-v2&envId=top-sql-50
*/

/*
We need to compare each day’s temperature with the previous day’s temperature.
So I’ll use a self join on the Weather table.

DATEDIFF(...)=1 → ensures dates are consecutive
“I used DATEDIFF to ensure comparison only with yesterday, not just the previous row.”
*/
select  w1.id
from Weather w1
join Weather w2
on DATEDIFF(w1.recordDate,w2.recordDate) =1
where w1.temperature>w2.temperature;