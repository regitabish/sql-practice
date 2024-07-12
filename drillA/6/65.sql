select 口座番号,日付,取引事由名,入金額,出金額
from 取引
join 取引事由
on 取引.取引事由ID= 取引事由.取引事由ID

order by 口座番号