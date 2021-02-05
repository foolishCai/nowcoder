# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Link    : https://github.com/foolishCai
# @Time    :  2021-02-01 08:57:51
# @File    : SQL34.sql
# @Note    :


drop table if exists actor;
CREATE TABLE actor (
   actor_id  smallint(5)  NOT NULL PRIMARY KEY,
   first_name  varchar(45) NOT NULL,
   last_name  varchar(45) NOT NULL,
   last_update  DATETIME NOT NULL);
insert into actor values ('3', 'WD', 'GUINESS', '2006-02-15 12:34:33');


-- sqlite
insert or ignore into actor values ('3', 'WD', 'GUINESS', '2006-02-15 12:34:33');