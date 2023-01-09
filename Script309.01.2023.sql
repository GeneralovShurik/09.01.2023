-- транзакции

use test;

start transaction;

-- 1)
update users set age = 20
where id = 4;

-- 2)
delete from users
where id2 = 22222222222;

commit; -- в случае ошибкиоткат изменения не произойдет
-- rollback; -- в случае ошибки все изменения откатятся
