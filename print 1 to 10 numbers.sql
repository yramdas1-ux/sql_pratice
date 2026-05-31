
with numbers as
(select 1 as num 

union ALL 

SELECT num+1 from numbers where num<10)
select * from numbers;