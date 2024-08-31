select
    名称,
    mp
from
    パーティー
where
    mp = (
        select
            max(mp)
        from
            パーティー
    )