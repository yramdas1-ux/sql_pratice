create table product_sale ( 
 product varchar(10),
 sales_date Date,
 amount int
 );
 select * from product_sale;

 INSERT INTO product_sale (product, sales_date, amount) VALUES
('TV', '2016-11-28', 900),
('TV', '2016-11-29', 500),
('FRIDGE', '2016-11-27', 760),
('FRIDGE', '2016-11-26', 850);

drop table product_sales;

with temp1 as
(
select *,ROW_NUMBER() over(partition by product order by amount desc) as product_sales1
from product_sale 
)
select product,sales_date,amount from temp1 where product_sales1 = 1;

;