select クリア区分,count(*)
from 経験イベント
group by クリア区分
order by クリア区分