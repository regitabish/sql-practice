select
    id,
    case
        when 名称 is Null then 'いない'
        else 名称
    end,
    コード名称 as 職業
From
    パーティー
    right join コード on コード.コード値 = パーティー.職業コード
where
    コード.コード種別 = 1