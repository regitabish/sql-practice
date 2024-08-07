select
    商品コード,
    数量
From
    注文
where
    数量 >= all (
        select
            avg(数量)
        from
            注文
        group by
            商品コード
    )