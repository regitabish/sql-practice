select 名義,
coalesce(cast(更新日 as text),'設定なし')
from 口座