# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/5 8:54
# @File    : SQL17.sql
# @Note    :

CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;

select t.emp_no, t.salary
from(
    select emp_no, salary, row_number()over(order by salary desc) as rn
    from salaries
    where to_date='9999-01-01'
)t
where t.rn=2
;