-- 名前の一部に「シャツ」を含む商品の、全てのカラムの値を取得してください
select *
from items
where name like "%シャツ%"
;