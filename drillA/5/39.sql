select distinct(種別),
case when 種別='1' then '普通'
     when 種別='2' then '当座'
else '別段'
end as 種別名
from 口座
order by 種別