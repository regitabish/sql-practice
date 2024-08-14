select
    case
        when 前提イベント番号 is null then '前提なし'
        else cast(前提イベント番号 as varchar(20))
    end,
    イベント番号,
    case
        when 後続イベント番号 is null then '後続なし'
        else cast(後続イベント番号 as varchar(20))
    end
from
    イベント