/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL47.sql
# @Note    :
**************************************************************************************/
create table emp_bonus(
emp_no int not null,
btype smallint not null);
CREATE TABLE `salaries` (
`emp_no` int(11) NOT NULL,
`salary` int(11) NOT NULL,
`from_date` date NOT NULL,
`to_date` date NOT NULL, PRIMARY KEY (`emp_no`,`from_date`));
如：
INSERT INTO emp_bonus VALUES (10001,1);
INSERT INTO salaries VALUES(10001,85097,'2001-06-22','2002-06-22');
INSERT INTO salaries VALUES(10001,88958,'2002-06-22','9999-01-01');

update salaries set salary = 1.1 * salary
where emp_no in (select emp_no from ( select s.emp_no
                from salaries s inner join emp_bonus e
                on s.emp_no = e.emp_no)a
                where to_date='9999-01-01');