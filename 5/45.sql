select *,
case
when 残高 >2000000 then
    cast(残高*(.00003) as integer ) 
when 残高 >500000 then
    cast(残高*(.00002) as integer )
else 
    cast(残高*(.00001) as integer ) 
end 
from 口座
order by 残高 desc