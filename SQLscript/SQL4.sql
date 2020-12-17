# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/16 8:42
# @File    : SQL4.sql
# @Note    :

--    CREATE TABLE `dept_emp` (
--    `emp_no` int(11) NOT NULL,
--    `dept_no` char(4) NOT NULL,
--    `from_date` date NOT NULL,
--    `to_date` date NOT NULL,
--    PRIMARY KEY (`emp_no`,`dept_no`))
--    ;
--    CREATE TABLE `employees` (
--    `emp_no` int(11) NOT NULL,
--    `birth_date` date NOT NULL,
--    `first_name` varchar(14) NOT NULL,
--    `last_name` varchar(16) NOT NULL,
--    `gender` char(1) NOT NULL,
--    `hire_date` date NOT NULL,
--    PRIMARY KEY (`emp_no`))
--    ;

select b.last_name, b.first_name, a.dept_no
from dept_emp a
join employees b on a.emp_no = b.emp_no
;