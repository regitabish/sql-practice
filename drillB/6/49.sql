select
    商品コード,
    count(*)
from
    注文
group by
    商品コード