/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL60.sql
# @Note    :
**************************************************************************************/

CREATE TABLE `salaries` ( `emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;

SELECT emp_no, 
salary,  SUM(salary) OVER(ORDER BY emp_no) AS running_total 
FROM salaries WHERE to_date = '9999-01-01'
