select distinct c.customer_id,
sum(t.list_price) over (partition by c.customer_id),
max(t.list_price) over (partition by c.customer_id),
min(t.list_price) over (partition by c.customer_id),
count(*) over (partition by c.customer_id)
from "transaction" t 
join customer c 
on c.customer_id = t.customer_id 
order by count desc, sum desc

-- разница есть в округлении