update 注文
set クーポン割引料=クーポン割引料+300
where 注文日 between '2022-03-12' and '2022-03-14' and 数量>=2
and クーポン割引料 is not null 