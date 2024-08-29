select タイプ,count(*)
from 経験イベント
group by タイプ
order by タイプ