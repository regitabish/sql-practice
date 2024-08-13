select
    *,
    case
        when 職業コード = '11'
        or 職業コード = '21' then hp + 50
        else hp
    end as 勇者の鈴使用時HP
from
    パーティー