--Customer Who Visited but Did Not Make Any Transactions
/*
https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/?envType=study-plan-v2&envId=top-sql-50
*/

/*
I use COUNT(*) because I want to count rows. Using COUNT(column) depends on NULLs, so COUNT(*) is safer and clearer.
*/
select v.customer_id , count(customer_id) as count_no_trans
from Visits v
left join transactions t
on v.visit_id = t.visit_id
where t.transaction_id is NULL
group by v.customer_id;

/*
jaha be aggregate fun ho vaha pe group by
*/