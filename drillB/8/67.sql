select
    注文日,
    case
        when 商品.商品コード in (
            select
                商品コード
            from
                廃番商品
        ) then 商品.商品コード || ':(廃番)'
        else 商品.商品コード || ':' || 商品.商品名
    end,
    case
        when 数量 is null then 0
        else 数量
    end
from
    商品
    left join 注文 on 商品.商品コード = 注文.商品コード
where
    商品.商品区分 = '3'