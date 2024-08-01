update 商品
set
    商品コード = 'E' || right (商品コード, 4)
where
    left (商品コード, 1) = 'W'