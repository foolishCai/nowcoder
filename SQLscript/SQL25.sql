# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Link    : https://github.com/foolishCai
# @Time    :  2021-01-19 08:42:13
# @File    : SQL25.sql
# @Note    :

CREATE TABLE `dept_emp` (
`emp_no` int(11) NOT NULL,
`dept_no` char(4) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`))
;
CREATE TABLE `dept_manager` (
`dept_no` char(4) NOT NULL,
`emp_no` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`))
;
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;


select de.emp_no
      ,dm.emp_no as manager_no
      ,s1.salary as emp_salary
      ,s2.salary as manager_salary
from dept_emp de
join dept_manager dm on de.dept_no=dm.dept_no
join salaries s1 on de.emp_no=s1.emp_no and s2.to_date='9999-01-01'
join salaries s2 on dm.emp_no=s2.emp_no and s1.salary>s2.salary and s1.to_date='9999-01-01'
;