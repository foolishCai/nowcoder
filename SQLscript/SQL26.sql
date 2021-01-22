# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Link    : https://github.com/foolishCai
# @Time    :  2021-01-20 08:51:25
# @File    : SQL26.sql
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
CREATE TABLE IF NOT EXISTS `titles` (
`emp_no` int(11) NOT NULL,
`title` varchar(50) NOT NULL,
`from_date` date NOT NULL,
`to_date` date DEFAULT NULL)
;


select a.dept_no, a.dept_name, c.title, count(1) as `count`
from departments a
join (select * from dept_emp where to_date = '9999-01-01') b on a.dept_no = b.dept_no
join (select * from titles where to_date='9999-01-01') c on b.emp_no = c.emp_no
group by  a.dept_no, a.dept_name, c.title
order by a.dept_no
;