# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/23 8:45
# @File    : SQL9.sql
# @Note    :

--CREATE TABLE `dept_manager` (
--`dept_no` char(4) NOT NULL,
--`emp_no` int(11) NOT NULL,
--`from_date` date NOT NULL,
--`to_date` date NOT NULL,
--PRIMARY KEY (`emp_no`,`dept_no`))
--;
--CREATE TABLE `salaries` (
--`emp_no` int(11) NOT NULL,
--`salary` int(11) NOT NULL,
--`from_date` date NOT NULL,
--`to_date` date NOT NULL,
--PRIMARY KEY (`emp_no`,`from_date`))
--;

--select a.dept_no, a.emp_no, b.salary
--from(select * from dept_manager where to_date='9999-01-01') a
--join(select * from salaries where to_date='9999-01-01') b on a.emp_no = b.emp_no and a.to_date = b.to_date
--where a.dept_no asc
--;


SELECT dept_manager.dept_no, dept_manager.emp_no, salaries.salary
FROM dept_manager, salaries
WHERE salaries.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01' AND dept_manager.emp_no = salaries.emp_no
ORDER BY dept_manager.dept_no ASC
;