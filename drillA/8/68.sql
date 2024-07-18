select
    口座.口座番号,
    case
        when 口座.口座番号 not in (
            select
                口座番号
            from
                廃止口座
        ) then 名義
        else '解約済み'
    end,
    case
        when 口座.口座番号 not in (
            select
                口座番号
            from
                廃止口座
        ) then 残高
        else 0
    end
from
    口座
    join 取引 on 口座.口座番号 = 取引.口座番号
where
    取引.日付 = '2020-03-01'