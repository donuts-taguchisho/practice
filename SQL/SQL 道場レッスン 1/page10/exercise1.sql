-- 男性向け、女性向け、男女兼用商品ごとに指定されたデータを取得してください
select items.gender, sum(items.price) as "売上額"
from items
join sales_records
on sales_records.item_id = items.id
group by gender
;