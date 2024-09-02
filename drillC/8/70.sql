select
    イベント.イベント番号,
    イベント.イベント名称,
    前提イベント.前提回数
from
    イベント
    right join (
        select
            前提イベント番号,
            count(前提イベント番号) as 前提回数
        from
            イベント
        where
            前提イベント番号 is not null
        group by
            前提イベント番号
        order by
            前提イベント番号
    ) as 前提イベント on イベント.イベント番号 = 前提イベント.前提イベント番号