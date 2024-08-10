select
    商品.商品コード,
    商品名,
    単価,
    sum(数量),
    単価 * sum(数量) as 総売り上げ
from
    商品
    left join 注文 on 商品.商品コード = 注文.商品コード
where
    商品.商品コード like 'B%'
group by
    商品.商品コード,
    商品.商品名,
    商品.商品名,
    商品.単価