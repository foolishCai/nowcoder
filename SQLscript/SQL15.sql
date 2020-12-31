# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/31 8:36
# @File    : SQL15.sql
# @Note    :

CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`))
;

select emp_no, birth_date, first_name, last_name, gender, hire_date
from employees
where emp_no%2=1 and last_name!='Mary'
order by hire_date
desc
;
