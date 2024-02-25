select count(*), job_industry_category  from customer c
group by job_industry_category 
order by count(*) desc