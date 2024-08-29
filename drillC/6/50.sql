select left(職業コード,1),max(hp),max(mp),avg(mp)
from パーティー
group by left(職業コード,1)