Input

vendor    qty

amazon    10

flipkart  10

myntra    10

flipkart  5

myntra    10

o/p:

amazon flipkart myntra

10 15 20

create table orders_data ( vendor varchar(15) , qtl int);

insert into orders_data values 
                             ('amazon', 10),
('flipkart', 10),
('myntra', 10),
('flipkart', 5),
('myntra', 10);

select * from orders_data;

select sum(case when vendor ='amazon' then qtl else 0 end ) as amazon,
       sum(case when vendor ='flipkart' then qtl else 0 end ) as filipkart,
       sum(case when vendor = 'myntra' then qtl else 0 end ) as myntra from orders_data;