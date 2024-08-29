select
    case
        when sum(mp)<500 then '敵は見とれている'
        when 500<=sum(mp) and sum(mp)<1000 then '敵は茫然としている'
        else '敵はひれ伏している'
    end
from パーティー