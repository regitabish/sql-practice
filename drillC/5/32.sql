select 
case
    when left(職業コード,1) = '1' then 'S'
    when left(職業コード,1) = '2' then 'M'
    else 'A'
end as 職業区分
,id,職業コード,名称
from パーティー
order by 職業コード