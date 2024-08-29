select
    sum(foo.door)
from
    (
        select
            case
                when hp < 100 then 1
                when 100 <= hp
                and hp < 150 then 2
                when 150 <= hp
                and hp < 200 then 3
                else 4
            end door
        from
            パーティー
    ) as foo