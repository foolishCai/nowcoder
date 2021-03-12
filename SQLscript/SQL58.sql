/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL58.sql
# @Note    :
**************************************************************************************/
select e.emp_no,e.first_name,e.last_name,b.btype,s.salary,
(CASE b.btype
WHEN 1 THEN 0.1*salary
WHEN 2 THEN 0.2*salary
ELSE 0.3*salary
END) bouns
from employees e,emp_bonus b,salaries s
where  s.emp_no=e.emp_no and e.emp_no =b.emp_no
and s.to_date='9999-01-01'