select
    商品コード,
    count(*)
from
    注文
group by
    商品コード
having
    count(*) < 5
order by
    2 desc