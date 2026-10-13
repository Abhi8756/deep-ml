-- your query
SELECT round(avg(cnt),2) 
from (
    select count(distinct(thread_id)) as cnt 
    from posts p
    left join comments c 
    on p.id = c.post_id
    group by c.post_id  
)