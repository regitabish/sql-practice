select *,'◎'
from 口座
union
select *,'×'
from 廃止口座
where 解約時残高 <> 0

order by 2