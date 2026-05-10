-- Managers with at Least 5 Direct Reports
/*
https://leetcode.com/problems/managers-with-at-least-5-direct-reports/description/?envType=study-plan-v2&envId=top-sql-50
*/

/*
“We need managers who have at least 5 employees directly reporting to them.

Since manager IDs refer to employee IDs in the same table, this is a self-referencing relationship.”
*/

select e1.name
from Employee e1
join Employee e2
on e1.id = e2.managerId
GROUP BY e1.id, e1.name
HAVING COUNT(e2.id) >= 5;