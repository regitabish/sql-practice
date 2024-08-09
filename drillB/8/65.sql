select
    注文.商品コード,
    商品名,
    case
        when 注文.商品コード in (
            select
                商品コード
            from
                廃番商品
        ) then '廃番'
    end
from
    注文
    left join 商品 on 注文.商品コード = 商品.商品コード
where
    注文日 >= '2020-08-01'