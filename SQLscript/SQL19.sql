# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/7 8:39
# @File    : SQL19.sql
# @Note    :

CREATE TABLE `departments` (
`dept_no` char(4) NOT NULL,
`dept_name` varchar(40) NOT NULL,
PRIMARY KEY (`dept_no`))
;
CREATE TABLE `dept_emp` (
`emp_no` int(11) NOT NULL,
`dept_no` char(4) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`dept_no`))
;
CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL,
PRIMARY KEY (`emp_no`))
;

select a.last_name a.first_name, b.dept_name
from employees a
left join (
    select t1.emp_no, t2.dept_name
    from dept_emp t1
    join departments t2 on t1.dept_no = t2.dept_no
)b on a.emp_no = b.emp_no
;

