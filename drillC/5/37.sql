select イベント番号,イベント名称,
case
    when タイプ='1' then '強制'
    when タイプ='2' then 'フリー'
    when タイプ='3' then '特殊'
    else null
end as タイプ,
case
    when イベント番号<='10' then '序盤'
    when イベント番号 between '11' and '17' then '中盤'
    else '終盤'
end as 発生時期
from イベント
