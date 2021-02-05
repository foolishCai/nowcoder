/**************************************************************************************
# @Author  : Your Name
# @Email   : you@example.org
# @Link    : http://example.org
# @Time    : 2021-02-03 08:46:24
# @File    : SQL36.sql
# @Note    :
**************************************************************************************/
CREATE TABLE actor  (
   actor_id  smallint(5)  NOT NULL PRIMARY KEY,
   first_name  varchar(45) NOT NULL,
   last_name  varchar(45) NOT NULL,
   last_update  datetime NOT NULL)
;


create unique index uniq_idx_firstname on actor(first_name);
create  index idx_lastname on actor(last_name);