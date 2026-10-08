-- your query
SELECT c.customer_id,c.name 
from customers c 
left join orders o 
on c.customer_id = o.customer_id 
where o.order_id is null 
order by c.customer_id asc