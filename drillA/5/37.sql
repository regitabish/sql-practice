select *,更新日 + 180 as 口座期限日
from 口座
where 更新日<'2020-12-31'