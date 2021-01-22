# @Author  : Cai
# @Emaio   : chenyuwei_0303@yeah.net
# @Link    : https://github.com/foolishCai
# @Time    :  2021-01-22 09:05:40
# @File    : SQL28.sql
# @Note    :

CREATE TABLE IF NOT EXISTS film (
film_id smallint(5)  NOT NULL DEFAULT '0',
title varchar(255) NOT NULL,
description text,
PRIMARY KEY (film_id))
;
CREATE TABLE category  (
category_id  tinyint(3)  NOT NULL ,
name  varchar(25) NOT NULL, `last_update` timestamp,
PRIMARY KEY ( category_id ))
;
CREATE TABLE film_category  (
film_id  smallint(5)  NOT NULL,
category_id  tinyint(3)  NOT NULL, `last_update` timestamp);

select a.name, count(c.film_id)
from (selest * from category where description like '%robot%') a 
join (select *, count(1)over(partionn by category_id) as cnt from  film_category)b on a.film_id = b.film_id and b.cnt>=5
join film c on b.category_id = c.category_id
group by a.name
;
