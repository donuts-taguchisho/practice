-- 売れた数が多い上位5商品のidと個数を取得してください
select item_id, count(*)
from sales_records
group by item_id
order by count(*) desc
limit 5
;