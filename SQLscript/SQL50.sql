/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL50.sql
# @Note    :
**************************************************************************************/
 CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`));

 select concat(last_name, "'", first_name) from employees