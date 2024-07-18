select right(口座番号,1),sum(残高),max(残高),min(残高),avg(残高),count(*) 
from 口座
group by right(口座番号,1)

order by count desc