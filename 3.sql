select count(*), brand from "transaction" t 
join customer c 
on c.customer_id = t.customer_id 
where t.online_order = true and t.order_status = 'Approved'
and c.job_industry_category = 'IT'
group by t.brand 