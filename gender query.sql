emp table update gender male to female and female to male 

-- Create table
CREATE TABLE emp
(
    emp_id INT,
    emp_name VARCHAR(50),
    gender VARCHAR(10)
);

-- Insert statements
INSERT INTO emp VALUES
(1, 'John', 'Male'),
(2, 'Priya', 'Female'),
(3, 'David', 'Male'),
(4, 'Sneha', 'Female');

select * from emp;

update emp set gender = case when gender = 'Male' then 'Female' 
                             when gender = 'Female' then 'Male' end;