-- 日ごとの売上額とその日付を取得してください
select purchased_at, sum(items.price) as "売上額"
from sales_records
join items
on items.id = sales_records.item_id
group by purchased_at
order by purchased_at
;