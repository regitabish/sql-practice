select *
from 商品
where (商品区分 = '1' and 単価<=3000) or (商品区分 = '3' and 単価>=10000)
