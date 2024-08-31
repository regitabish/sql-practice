select
    count(イベント番号)
from
    イベント
where
    イベント番号 not in (
        select
            イベント番号
        from
            経験イベント
    )