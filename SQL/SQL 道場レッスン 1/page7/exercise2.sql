-- このサイトの総売上と総利益を取得してください
select sum(price) as "総売上", sum(price - cost) as "総利益"
from sales_records
join items
on items.id = sales_records.item_id
;