select *,残高%1000 as 切り上げ
from 口座
where length(cast (残高 as varchar)) >=4
    and 残高%1000= 0
order by 口座番号