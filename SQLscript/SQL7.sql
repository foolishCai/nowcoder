# -*- coding: utf-8 -*-
# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2020/12/21 8:46
# @File    : SQL7.sql
# @Note    :

--    CREATE TABLE `salaries` (
--    `emp_no` int(11) NOT NULL,
--    `salary` int(11) NOT NULL,
--    `from_date` date NOT NULL,
--    `to_date` date NOT NULL,
--    PRIMARY KEY (`emp_no`,`from_date`));

SELECT emp_no, COUNT(emp_no) AS t
FROM salaries
GROUP BY emp_no
HAVING t > 15
;
