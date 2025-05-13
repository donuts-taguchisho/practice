-- 20歳未満の男性ユーザーの、全てのカラムの値を取得してください。
select *
from users
where age < 20
and gender = 0
;