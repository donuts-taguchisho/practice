-- 7000円以下で「グレーパーカー」より利益が高い商品を取得してください
select name, price - cost
from items
where price <= 7000
and price - cost > (
  select price - cost
  from items
  where name = "グレーパーカー"
  )
;