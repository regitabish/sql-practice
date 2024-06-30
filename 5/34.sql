select 名義,残高/1000 as 千円
from 口座

where 残高 > 1000000
