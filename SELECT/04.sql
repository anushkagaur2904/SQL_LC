-- Article Views I
/*
https://leetcode.com/problems/article-views-i/description/?envType=study-plan-v2&envId=top-sql-50
*/

/*
We need to find rows where the author viewed their own article,
i.e., author_id = viewer_id.
Then return unique author IDs sorted in ascending order.”
*/

select distinct author_id as id
from views
where author_id = viewer_id
order by id;