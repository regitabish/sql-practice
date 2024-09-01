select
    イベント.イベント番号,
    イベント.イベント名称,
    case
        when 経験イベント.クリア区分 is null then '未クリア'
        else 経験イベント.クリア区分
    end
From
    イベント
    left join 経験イベント on イベント.イベント番号 = 経験イベント.イベント番号
order by
    イベント.イベント番号