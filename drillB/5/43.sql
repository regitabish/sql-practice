select
    注文日,
    right (注文番号, 4),
    注文枝番,
    商品コード,
    数量
from
    注文
where
    right (注文番号, 4) between '1000' and '2000'
order by
    right (注文番号, 4)