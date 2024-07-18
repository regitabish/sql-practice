select 取引.取引番号,取引.取引事由id,取引事由.取引事由名
from 取引事由
right join 取引
on 取引事由.取引事由id = 取引.取引事由id