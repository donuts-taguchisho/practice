-- 「サンダル」を購入したユーザーのidと名前を重複無く取得してください
select distinct users.id, users.name
from sales_records
join users
on sales_records.user_id = users.id
where sales_records.item_id = (
  select id
  from items
  where name = "サンダル"
  )
group by users.name
;