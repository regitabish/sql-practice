select 残高,
(select sum(入金額) as 入金 from 取引 where 口座番号 = '1115600' and 日付= '2021-12-28'),
(select sum(出金額) as 出金 from 取引 where 口座番号 = '1115600' and 日付= '2021-12-28')

from 口座
where 口座番号 = '1115600' 