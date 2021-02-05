/**************************************************************************************
# @Author  : Your Name
# @Email   : you@example.org
# @Link    : http://example.org
# @Time    : 2021-02-05 08:35:20
# @File    : SQL39.sql
# @Note    :
**************************************************************************************/

select * from salaries FORCE INDEX (idx_emp_no) where emp_no = 10005;