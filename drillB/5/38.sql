select distinct
    (商品区分),
    case
        when 商品区分 = '1' then '衣類'
        when 商品区分 = '2' then '靴'
        when 商品区分 = '3' then '雑貨'
        when 商品区分 = '9' then '未分類'
    end as 商品区分名
from
    商品
order by
    商品区分