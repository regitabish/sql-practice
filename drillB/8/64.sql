select
    注文.商品コード,
    商品名
from
    注文
    left join 商品 on 注文.商品コード = 商品.商品コード
where
    注文日 >= '2020-08-01'