select
    *
from
    商品
where
    商品区分 = '9'
    and (
        単価 <= 1000
        or 単価 >= 10000
    )
order by
    単価,
    商品コード