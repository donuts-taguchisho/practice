-- 「グレーパーカー」より値段が高い商品の名前と値段を取得してください
select name, price
from items
where price > (
  select price
  from items
  where name = "グレーパーカー"
  )
;