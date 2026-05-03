-- Replace Employee ID With The Unique Identifier
/*
https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/submissions/1994058831/?envType=study-plan-v2&envId=top-sql-50
*/

select e.name, eu.unique_id
from Employees as e
left join EmployeeUNI as eu
on e.id = eu.id;
/*
✅ What is a LEFT JOIN?
A LEFT JOIN returns:
👉 all rows from the left table
👉 and matching rows from the right table
👉 if no match → NULL values for right table columns

🧠 Simple Definition (say this in interview)
“LEFT JOIN keeps all records from the left table and adds matching data from the right table. If no match exists, it fills NULL.”

🔍 Syntax
SELECT *FROM Table1LEFT JOIN Table2ON Table1.id = Table2.id;

📊 Example
Employees (Left Table)
id          name
1           A
2           B
3           C

EmployeeUNI (Right Table)
id          unique_id
1           101
3           103

🔗 LEFT JOIN Result

name        unique_id
A           101
B           NULL
C           103

✅ Key Observations


Employee B is still included ✔


Because LEFT JOIN never removes left table rows


Missing match → NULL



⚖️ LEFT JOIN vs INNER JOIN


LEFT JOIN → keeps all left rows


INNER JOIN → keeps only matching rows



🔥 Interview Line (important)
“I use LEFT JOIN when I must not lose any data from the primary table, even if related data is missing.”

*/