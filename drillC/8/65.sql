select
    パーティー.id,
    パーティー.名称,
    case
        when 職業.コード値 = パーティー.職業コード then 職業.コード名称
    end as 職業,
    case
        when 状態.コード値 = パーティー.状態コード then 状態.コード名称
    end as 状態
from
    パーティー
    join (
        select
            *
        from
            コード
        where
            コード種別 = 1
    ) as 職業 on パーティー.職業コード = 職業.コード値
    join (
        select
            *
        from
            コード
        where
            コード種別 = 2
    ) as 状態 on 状態.コード値 = パーティー.状態コード