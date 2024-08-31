update パーティー
set
    mp = パーティー.mp + 0.1* (
    table1.自分以外のパーティーmpの合計
    )

from
    (
        select
            id,
            職業コード,
            パーティー.mp,
            foo.sumOfMp - mp as 自分以外のパーティーMPの合計
        from
            (
                select
                    sum(mp) as sumOfMp
                from
                    パーティー
            ) as foo,
            パーティー
    ) as table1,
    コード
where
    table1.職業コード = コード.コード値 and
    パーティー.職業コード = コード.コード値
    and コード.コード名称='魔法使い'
    