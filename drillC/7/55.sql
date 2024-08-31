select
    経験イベント.イベント番号,
    経験イベント.クリア結果
from
    経験イベント,
    イベント
where
    経験イベント.イベント番号 = イベント.イベント番号
    and (
        イベント.タイプ = '1'
        or イベント.タイプ = '3'
    )
    and 経験イベント.クリア区分 = '1'