emp_id	employer	startyear	endyear
1001	Microsoft	2015	     2020
1001	Google	    2020	     2022
1002	Google	    2015	     2020
1002	Amazon	    2020	     2022
1002	Microsoft	2022	     2023
1003	Amazon	    2020	     2023
 
Retreive the employees along with the employer details 
whose first employer is Microsoft and next employer is Google


output:
emp_id   employer    next_employer
-----------------------------------
1001     Microsoft   Google

-- Create Table
CREATE TABLE employee_history (
    emp_id INT,
    employer VARCHAR(50),
    startyear INT,
    endyear INT
);

-- Insert Data
INSERT INTO employee_history VALUES
(1001, 'Microsoft', 2015, 2020),
(1001, 'Google',    2020, 2022),

(1002, 'Google',    2015, 2020),
(1002, 'Amazon',    2020, 2022),
(1002, 'Microsoft', 2022, 2023),

(1003, 'Amazon',    2020, 2023);

select * from employee_history;
with temp1 as (
select *,LEAD(employer) over(partition by emp_id order by startyear ) as next_employer from employee_history
)
select emp_id,employer,next_employer from temp1 where employer ='Microsoft' and next_employer ='Google';
===================================================
WITH cte AS
(
    SELECT
        *,
        LEAD(employer) OVER
        (
            PARTITION BY emp_id
            ORDER BY startyear
        ) AS next_employer,

        ROW_NUMBER() OVER
        (
            PARTITION BY emp_id
            ORDER BY startyear
        ) AS rn

    FROM employee_history
)

SELECT
    emp_id,
    employer,
    next_employer
FROM cte
WHERE rn = 1
AND employer = 'Microsoft'
AND next_employer = 'Google';