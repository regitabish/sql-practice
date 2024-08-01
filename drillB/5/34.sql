select
    *,
    cast(単価 * 0.95 as integer) as キャンペーン価格
from
    商品
where
    商品区分 = '9'
order by
    商品コード