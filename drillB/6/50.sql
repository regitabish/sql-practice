select
    商品コード,
    count(*)
from
    注文
group by
    商品コード
order by
    2 desc
offset
    0 rows
fetch next
    10 rows only