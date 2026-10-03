-- your query
SELECT department, name , salary , rnk
from (
    select department , name , salary, 
    Dense_rank() over (
    partition by department
    order by salary desc
    ) as rnk 
    from employees
) t
where rnk <= 3
order by department asc, salary desc , name asc

