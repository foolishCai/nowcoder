# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/14 8:51
# @File    : SQL2.sql
# @Note    :

--    CREATE TABLE `employees` (
--    `emp_no` int(11) NOT NULL,
--    `birth_date` date NOT NULL,
--    `first_name` varchar(14) NOT NULL,
--    `last_name` varchar(16) NOT NULL,
--    `gender` char(1) NOT NULL,
--    `hire_date` date NOT NULL,
--    PRIMARY KEY (`emp_no`));

select t.emp_no, t.birth_date, t.first_name, t.last_name, t.gender, t.hire_date
from(
    select emp_no, birth_date, first_name, last_name, gender, hire_date,
           row_number() over(order by hire_date desc) as rn
    from employees
)t
where t.rn=3
;