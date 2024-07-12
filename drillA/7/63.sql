select subtable.口座番号,subtable.日付,subtable.maxin,subtable.maxout
from (
    --
    select 口座番号,max(入金額) as maxin,max(出金額) as maxout, sum(入金額) as sumin,sum(出金額) as sumout,日付
    from 取引
    where 口座番号='3104451'
    group by 口座番号, 日付
    
    ) as subtable

where sumin is not null and sumout is not null