select
    商品コード,
    sum(数量)
from
    注文
group by
    商品コード
having
    left (商品コード, 1) = 'Z'
    and sum(数量) >= 100