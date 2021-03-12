/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL54.sql
# @Note    :
**************************************************************************************/
select avg(salary) as avg_salary from salaries
    where  to_date = '9999-01-01'
    and salary != (select max(salary) from salaries where to_date ='9999-01-01')
    and salary != (select min(salary) from salaries where to_date ='9999-01-01')