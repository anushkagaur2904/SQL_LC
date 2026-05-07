-- Average Time of Process per Machine
/*
https://leetcode.com/problems/average-time-of-process-per-machine/description/?envType=study-plan-v2&envId=top-sql-50
*/

/*
✅ Approach (say this first)

“For each process, we need:

processing time = end timestamp - start timestamp

Since start and end are stored in separate rows, I’ll use a self join on:

machine_id
process_id

Then compute the average per machine.”

*/
select a1.machine_id, ROUND(AVG(a2.timestamp - a1.timestamp),3) as processing_time
from Activity a1
join Activity a2
on a1.machine_id=a2.machine_id
and a1.process_id=a2.process_id
where a1.activity_type = 'start'
and a2.activity_type = 'end'
group by a1.machine_id;