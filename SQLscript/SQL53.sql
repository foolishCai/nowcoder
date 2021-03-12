/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL53.sql
# @Note    :
**************************************************************************************/

select dept_no, group_concat(emp_no)as employees from dept_emp
group by dept_no;