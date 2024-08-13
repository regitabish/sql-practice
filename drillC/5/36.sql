select
    名称,
    hp || '/' || mp as HPとMP,
    case
        when 状態コード = '01' then '眠り'
        when 状態コード = '' then '毒'
        when 状態コード = '' then '沈黙'
        when 状態コード = '' then '混乱'
        when 状態コード = '' then '気絶'
        else null
    end
from
    パーティー