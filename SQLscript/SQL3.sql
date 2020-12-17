# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/15 8:51
# @File    : SQL3.sql
# @Note    :


--    CREATE TABLE `salaries` (
--    `emp_no` int(11) NOT NULL, -- '员工编号',
--    `salary` int(11) NOT NULL,
--    `from_date` date NOT NULL,
--    `to_date` date NOT NULL,
--    PRIMARY KEY (`emp_no`,`from_date`));

--    CREATE TABLE `dept_manager` (
--    `dept_no` char(4) NOT NULL, -- '部门编号'
--    `emp_no` int(11) NOT NULL, --  '员工编号'
--    `to_date` date NOT NULL,
--    PRIMARY KEY (`emp_no`,`dept_no`));


select b.emp_no, b.salary, b.from_date, b.to_date, a.dept_no
from(select * from dept_manager where to_date='9999-01-01') a
join (select * from salaries where to_date='9999-01-01') b on a.emp_no = b.emp_no
order by b.emp_no
;

