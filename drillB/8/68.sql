select
    注文日,
    注文番号,
    注文枝番,
    注文.商品コード,
    case
        when 商品.商品名 is null then (
            select
                廃番商品.商品名
            from
                廃番商品
            where
                廃番商品.商品コード = 注文.商品コード
        )
        else 商品.商品名
    end as 商品名,
    case
        when 商品.単価 is null then (
            select
                廃番商品.単価
            from
                廃番商品
            where
                廃番商品.商品コード = 注文.商品コード
        )
        else 商品.単価
    end as 商品単価,
    数量,
    case
        when 商品.単価 is null then case
            when クーポン割引料 is null then (
                select
                    廃番商品.単価
                from
                    廃番商品
                where
                    廃番商品.商品コード = 注文.商品コード
            ) * 数量
            else (
                select
                    廃番商品.単価
                from
                    廃番商品
                where
                    廃番商品.商品コード = 注文.商品コード
            ) * 数量 - クーポン割引料
        end
        else case
            when クーポン割引料 is null then 単価 * 数量
            else 単価 * 数量 - クーポン割引料
        end
    end as 注文金額
from
    注文
    left join 商品 on 注文.商品コード = 商品.商品コード
where
    注文番号 = '202104030010'