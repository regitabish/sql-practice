--
select subtable.口座番号
from (
    select max(入金額),max(出金額) 
    from 取引
    where 口座番号='3104451'
    ) as subtable