# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/11 8:50
# @File    : SQL21.sql
# @Note    :

CREATE TABLE `employees` (
`emp_no` int(11) NOT NULL,
`birth_date` date NOT NULL,
`first_name` varchar(14) NOT NULL,
`last_name` varchar(16) NOT NULL,
`gender` char(1) NOT NULL,
`hire_date` date NOT NULL, --  '入职时间'
PRIMARY KEY (`emp_no`))
;
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL, --  '一条薪水记录开始时间'
`to_date` date NOT NULL, --  '一条薪水记录结束时间'
PRIMARY KEY (`emp_no`,`from_date`))
;

select s1.emp_no,(s1.salary-e1.salary) as growth
from(
    select emp_no,salary
    from salaries
    where to_date='9999-01-01'
) as s1
join(
    select s.emp_no,s.salary
    from salaries as s
    join employees as e on s.emp_no = e.emp_no and s.from_date=e.hire_date
) as e1 on s1.emp_no=e1.emp_no
order by growth
;