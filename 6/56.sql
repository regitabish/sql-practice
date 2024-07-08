select coalesce(left(cast(更新日 as text),4),'XXXX'),sum(残高),max(残高),min(残高),avg(残高) 

from 口座

group by coalesce(left(cast(更新日 as text),4),'XXXX')
order by 1 desc