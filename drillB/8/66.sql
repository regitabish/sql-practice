select
    注文日,
    商品.商品コード || ':' || 商品.商品名 as 商品,
    case
        when 数量 is null then 0
        else 数量
    end
from
    商品
    left join 注文 on 商品.商品コード = 注文.商品コード
where
    商品.商品区分 = '3'