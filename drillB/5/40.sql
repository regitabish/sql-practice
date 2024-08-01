select
    *
from
    商品
where
    length (商品名) >= 10
order by
    length (商品名)