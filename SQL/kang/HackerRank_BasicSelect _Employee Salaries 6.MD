----problem
We define an employee's total earnings to be their monthly  worked, and the maximum total earnings to be the maximum total earnings for any employee in the Employee table. Write a query to find the maximum total earnings for all employees as well as the total number of employees who have maximum total earnings. Then print these values as  space-separated integers.

Input Format

The Employee table containing employee data for a company is described as follows:
https://s3.amazonaws.com/hr-challenge-images/19629/1458557872-4396838885-ScreenShot2016-03-21at4.27.13PM.png

------answer
select max(months*salary) || ' ' ||count(1)
from employee
where (months*salary) = (select max(months*salary) from employee);