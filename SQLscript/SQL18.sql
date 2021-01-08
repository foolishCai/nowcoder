# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/6 8:48
# @File    : SQL18.sql
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
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;

select z.emp_no, z.salary, z.last_name, z.first_name
from(
    select t.emp_no, t1.salary, t.last_name, t.first_name, row_number() over(order by t1.salary desc) as rn
    from employees t
    join(select * from salaries where to_date='9999-01-01')t1 on t.emp_no = t1.emp_no
)z
where z.rn=2
;