-- 売上額が上位5位の商品の指定されたデータを取得してください
select items.id, items.name, sum(items.price) as "売上額"
from items
join sales_records
on sales_records.item_id = items.id
group by items.id, items.name, items.price
order by sum(price) desc
limit 5
;