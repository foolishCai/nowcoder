# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/4 8:37
# @File    : SQL16.sql
# @Note    :

CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;
CREATE TABLE IF NOT EXISTS "titles" (
`emp_no` int(11) NOT NULL,
`title` varchar(50) NOT NULL,
`from_date` date NOT NULL,
`to_date` date DEFAULT NULL)
;

select b.title, avg(a.salary) as `avg`
from(select * from salaries where to_date='9999-01-01') a
join(select * from titles where to_date='9999-01-01')b on a.emp_no = b.emp_no
group by b.title
;