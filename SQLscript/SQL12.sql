# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/28 9:05
# @File    : SQL12.sql
# @Note    :

CREATE TABLE `dept_emp` (
`emp_no` int(11) NOT NULL,
`dept_no` char(4) NOT NULL,
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

select t.dept_no, t.emp_no, t.salary
from(
    select a.dept_no, a.emp_no, b.salary, row_number() over(partition by a.dept_no order by b.salary desc) as rn
    from (select * from dept_emp where to_date = '9999-01-01')a
    left join (select * from salaries where to_date = '9999-01-01')b on a.emp_no = b.emp_no
)t
where t.rn=1
order by t.dept_no asc
;