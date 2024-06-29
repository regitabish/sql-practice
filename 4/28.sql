select 更新日,残高
from 口座
where 更新日 is not null

order by 2,1 desc
offset 10 rows 
fetch next 10 rows only