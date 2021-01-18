# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Time    : 2021/1/13 9:26
# @File    : SQL23.sql
# @Note    :


CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;

select emp_no, salary, dense_rank() over(order by salary desc) as t_rank
from salaries
where to_date='9999-01-01'
;