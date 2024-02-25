select distinct on(c.customer_id) c.first_name, c.last_name,
first_value (t.list_price) over (partition by c.customer_id order by date(t.transaction_date))
from "transaction" t 
join customer c 
on c.customer_id = t.customer_id