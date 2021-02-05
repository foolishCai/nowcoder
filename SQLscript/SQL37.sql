/**************************************************************************************
# @Author  : Your Name
# @Email   : you@example.org
# @Link    : http://example.org
# @Time    : 2021-02-04 08:48:34
# @File    : SQL37.sql
# @Note    :
**************************************************************************************/
create view actor_name_view as
select first_name as first_name_v,last_name as last_name_v 
from actor
;