select
    left (注文番号, 6),
    count(*) as 注文数
from
    注文
group by
    left (注文番号, 6)
order by
    1