select
    foo.口座番号,
    口座.名義,
    foo.日付,
    foo.counter
from
    口座
    join (
        select
            口座番号,
            日付,
            count(*) as counter
        from
            取引
        group by
            日付,
            口座番号
        having
            count(*) >= 3
    ) as foo on 口座.口座番号 = foo.口座番号