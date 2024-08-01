select
    商品コード,
    商品名,
    単価,
    cast(単価 * 0.7 as integer) as 値下げ後の単価
from
    商品
where
    単価 >= 10000