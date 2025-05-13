-- 商品ごとに商品のid、売れた個数を取得してください
select item_id, count(*)
from sales_records
group by item_id
;