select
    sum(foo.数量) as 割引による販売数,
    sum(foo.クーポン割引料) / sum(foo.数量) as 平均割引額
from
    (
        select
            数量,
            クーポン割引料
        from
            注文
        where
            商品コード = 'W0746'
            and クーポン割引料 is not null
    ) as foo