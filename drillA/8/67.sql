select 口座.口座番号,名義,残高
from 口座
join 取引
on 口座.口座番号=取引.口座番号
where 取引.日付 = '2020-03-01'
and (
    口座.口座番号 not in (select 口座番号 from 廃止口座)
)