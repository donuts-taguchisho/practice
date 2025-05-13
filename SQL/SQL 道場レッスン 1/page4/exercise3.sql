-- 各商品あたりの利益が上位5件の商品の名前と利益を取得してください
select name, price - cost
from items
order by price - cost desc
limit 5
;