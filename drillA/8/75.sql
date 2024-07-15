
select 口座.名義,口座.口座番号,口座.種別,口座.残高,口座.更新日
from(
select a.口座番号
From 口座 as a
join 口座 as b
on a.名義=b.名義 and a.口座番号<>b.口座番号
group by a.口座番号
) as foo
join 口座
on 口座.口座番号=foo.口座番号