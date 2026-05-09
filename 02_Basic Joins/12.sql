-- Students and Examinations
/*
https://leetcode.com/problems/students-and-examinations/description/?envType=study-plan-v2&envId=top-sql-50
*/
/*
This is a CROSS JOIN + LEFT JOIN + GROUP BY problem — a very important SQL pattern

Approach (say this first)

“We need every possible:

(student, subject)

pair, even if the student never attended that exam.

So:

Generate all combinations using CROSS JOIN
Match attendance using LEFT JOIN
Count occurrences using COUNT()

What is CROSS JOIN?

A CROSS JOIN returns:
👉 every possible combination of rows from two tables.

🧠 Simple Definition (say this in interview)

“CROSS JOIN creates the Cartesian product of two tables.”
*/

SELECT 
    s.student_id,
    s.student_name,
    sub.subject_name,
    COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e
ON s.student_id = e.student_id
AND sub.subject_name = e.subject_name
GROUP BY 
    s.student_id,
    s.student_name,
    sub.subject_name
ORDER BY 
    s.student_id,
    sub.subject_name;