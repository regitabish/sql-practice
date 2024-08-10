select
    a.商品コード,
    a.商品名,
    b.商品コード as 関連商品コード,
    b.商品名 as 関連商品名
from
    商品 as a
    left join 商品 as b on a.関連商品コード = b.商品コード