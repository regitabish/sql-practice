select 口座番号,名義,種別,残高,
substring(cast(更新日 as varchar),1,4) || cast('年' as text)||
substring(cast(更新日 as varchar),6,2) || cast('月' as text)||
substring(cast(更新日 as varchar),9,2) || cast('日' as text)
from 口座