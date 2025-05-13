-- 日ごとの販売個数とその日付を取得してください
select purchased_at, count(*) as "販売個数"
from sales_records
group by purchased_at
order by purchased_at asc
;