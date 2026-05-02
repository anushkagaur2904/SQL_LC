-- FIND CUSTOMER REFREE
/*
https://leetcode.com/problems/find-customer-referee/description/?envType=study-plan-v2&envId=top-sql-50
*/
select name
from customer
where referee_id!=2 OR referee_id IS NULL;
/*
“NULL values don’t satisfy normal comparisons like !=, so we must explicitly check IS NULL.”
*/
