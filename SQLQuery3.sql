select * from number1;

select max(id) as highest_amt from 

(select id, count(*) as cnt  from number1 

group by id 
having count(*) =1
)a;
======