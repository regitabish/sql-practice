select
    *
from
    イベント
where
    タイプ = '1'
    and 前提イベント番号 is not null
    and 後続イベント番号 is not null