select left(名義,1),count(*) as num,avg(Length(名義)) as ave
from 口座
group by left(名義,1)
having count(*)>10 or avg(Length(名義))>5