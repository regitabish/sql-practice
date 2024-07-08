select 種別,sum(残高) 

from 口座

group by 種別

having sum(残高)>3000000
order by 1 