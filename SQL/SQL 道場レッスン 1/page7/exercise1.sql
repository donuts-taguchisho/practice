-- 売れた数が多い上位5商品のIDと名前、個数を取得してください
select items.id, items.name, count(*)
from items
join sales_records
on sales_records.item_id = items.id
group by items.id
order by count(*) desc
limit 5
;