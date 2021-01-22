# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Link    : https://github.com/foolishCai
# @Time    :  2021-01-21 08:59:23
# @File    : SQL27.sql
# @Note    :

CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL,
PRIMARY KEY (`emp_no`,`from_date`))
;

select t.emp_no, t.from_date, t.salary_growth
from(
	select s1.emp_no, s2.from_date, (s2.salary - s1.salary) as salary_growth
	from salaries s1
	join salaries s2 on s1.emp_no = s2.emp_no and substr(s1.to_date,1,4)=substr(s2.from_date,1,4)
	)t
where t.salary_growth>5000
order by t.salary_growth desc
;