select 名称,hp,状態コード,
case
    when hp<=50 then 3 + cast(状態コード as integer)
    when hp between 51 and 100 then 2 + cast(状態コード as integer)
    when hp between 101 and 150 then 1 + cast(状態コード as integer)
    else 0  + cast(状態コード as integer)
    
end as risk

from パーティー
