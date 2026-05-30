---------------------------------------------------------
-- Query to get highest sale amount for each product
---------------------------------------------------------


Product		Sale_date		Amount     rnum 
TV		    2016-11-27		800
TV		    2016-11-28		900    
TV		    2016-11-29		500
FRIDGE		2016-11-27		760
FRIDGE		2016-11-26		850

Output:

TV		    2016-11-28	900
FRIDGE		2016-11-26	850





-- Create Table
CREATE TABLE product_sales (
    product VARCHAR(50),
    sale_date DATE,
    amount INT
);

-- Insert Data
INSERT INTO product_sales (product, sale_date, amount) VALUES
('TV', '2016-11-27', 800),
('TV', '2016-11-28', 900),
('TV', '2016-11-29', 500),
('FRIDGE', '2016-11-27', 760),
('FRIDGE', '2016-11-26', 850);

select * from product_sales;

with temp1 as (


select *,ROW_NUMBER() over(partition by product order by amount) as rnk from product_sales)
select product,sale_date,amount from temp1 where rnk =1;