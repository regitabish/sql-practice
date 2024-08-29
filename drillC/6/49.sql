select 
case
    when クリア区分='1' then 'クリアした'
    else 'クリアしていない'
end
,count(*)
from 経験イベント
group by クリア区分
order by クリア区分 desc