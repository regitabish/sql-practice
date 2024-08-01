select
    注文日,
    count(*) as 注文数
from
    注文
group by
    注文日