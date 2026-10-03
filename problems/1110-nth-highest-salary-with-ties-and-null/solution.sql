select distinct(t.salary) 
from (
    Select salary, dense_rank() over(
        order by salary desc 
    ) as rnk 
    from employee 
) t
where rnk = 3
