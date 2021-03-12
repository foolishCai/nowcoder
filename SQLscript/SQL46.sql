/**************************************************************************************
# @Author  : Cai
# @Email   : chenyw_work@yeah.net
# @Time    : 20210207
# @File    : SQL46.sql
# @Note    :
**************************************************************************************/

CREATE TABLE employees_test(
ID INT PRIMARY KEY NOT NULL,
NAME TEXT NOT NULL,
AGE INT NOT NULL,
ADDRESS CHAR(50),
SALARY REAL
);
 
CREATE TABLE audit(
EMP_no INT NOT NULL,
create_date datetime NOT NULL
);

ALTER TABLE audit
ADD FOREIGN KEY (EMP_no)
REFERENCES employees_test (ID);