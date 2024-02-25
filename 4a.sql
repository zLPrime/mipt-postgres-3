select c.customer_id, sum(t.list_price) as sum, max(t.list_price), min(t.list_price), count(t.list_price) count from "transaction" t 
join customer c 
on c.customer_id = t.customer_id 
group by c.customer_id 
order by count desc, sum desc --в таком порядке имеет больше смысла, потому что почти все суммы уникальны,
-- и 'order by sum desc, count desc' даст почти тот же результат, что 'order by sum desc'