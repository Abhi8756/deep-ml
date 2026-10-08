with cte as (
    select company , sum(profit) as total_profit
    from sales 
    group by company 
    order by sum(profit) desc
),
cte2 as (
    select company , total_profit , dense_Rank() over (order by total_profit desc) as rn
    from cte 
)
select company , total_profit 
from cte2 
where rn<=3
order by total_profit desc