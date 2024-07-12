select 口座番号,残高,
case when 残高>=1000000 then 'A'
     when 残高>=100000 then 'B'
else 'C'
end as ランク
from 口座
order by 2 desc