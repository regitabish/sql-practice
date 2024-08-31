select
    名称,
    hp,
    round(hp / sumhp.sumhp, 2)
from
    (
        select
            cast(sum(hp) as decimal) as sumhp   //float型で変換するとround使えないので注意する
        from
            パーティー
    ) as sumhp,
    パーティー