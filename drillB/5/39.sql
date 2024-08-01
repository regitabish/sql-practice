select 商品コード,商品名,単価,
    case 
        when 単価<3000 then 'S'
        when 単価 between 3000 and 10000 then 'M'
        else 'L'
    end as 販売ランク,
    case
        when 商品区分 = '1' then 商品区分 || ':' || '衣類'
        when 商品区分 = '2' then 商品区分 || ':' || '靴'
        when 商品区分 = '3' then 商品区分 || ':' || '雑貨'
        when 商品区分 = '9' then 商品区分 || ':' || '未分類'
    end as 商品区分名
from
    商品
order by
    商品区分