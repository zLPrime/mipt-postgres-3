select sum(list_price), to_char(date(transaction_date), 'YYYY-MM') as month, c.job_industry_category  from "transaction" t 
join customer c 
on c.customer_id = t.customer_id 
group by to_char(date(transaction_date), 'YYYY-MM'), job_industry_category
order by to_char(date(transaction_date), 'YYYY-MM'), job_industry_category