select
    *
from
    商品
order by
    単価,
    商品区分,
    商品コード
offset
    5 rows
fetch next
    15 rows only