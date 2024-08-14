select
    名称,
    HP,
    length (名称) * 10 as 予想されるダメージ
from
    パーティー