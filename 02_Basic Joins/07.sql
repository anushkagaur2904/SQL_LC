-- Product Sales Analysis I
/*
https://leetcode.com/problems/product-sales-analysis-i/description/?envType=study-plan-v2&envId=top-sql-50
*/

select p.product_name, s.year,s.price
from Product as p
right join Sales as s
on p.product_id = s.product_id;