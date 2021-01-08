# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/7 8:39
# @File    : SQL19.sql
# @Note    :

CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;


select  (max(salary)-min(salary)) as growth
from salaries
where emp_no=10001
;
