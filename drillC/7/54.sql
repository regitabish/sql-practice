update パーティー
set
    mp = mp + (
        select
            sum(mp * 0.10)
        from
            パーティー
    )
where
    パーティー.職業コード = コード.コード値
    and コード.コード名称 = '魔法使い'