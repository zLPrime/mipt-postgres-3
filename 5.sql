SELECT distinct c.first_name, c.last_name ,
sum(t.list_price) over (partition by c.customer_id)
from "transaction" t 
join customer c 
on c.customer_id = t.customer_id 
order by sum desc
limit 1;

SELECT distinct c.first_name, c.last_name ,
sum(t.list_price) over (partition by c.customer_id)
from "transaction" t 
join customer c 
on c.customer_id = t.customer_id 
order by sum asc
limit 1;
