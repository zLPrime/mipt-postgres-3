select *, date(transaction_date) - date(prev_date) as date_interval
into temporary table t1
from 
	(select distinct c.customer_id, c.first_name, c.last_name, t.transaction_date ,
	lag(t.transaction_date) over (partition by c.customer_id order by date(t.transaction_date)) as prev_date
	from "transaction" t 
	join customer c 
	on c.customer_id = t.customer_id)
where prev_date is not null;
		
select * from t1 where date_interval = (select max(date_interval) from t1);