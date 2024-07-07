select *,cast(残高*(.00002) as integer ) as 利息
from 口座
order by 残高 desc