-- your query
SELECT e1.name
from employees e1
join employees e2 
on e1.manager_id = e2.id
where e1.salary > e2.salary
