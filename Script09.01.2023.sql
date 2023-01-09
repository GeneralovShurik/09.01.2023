-- хранимые функции(обязаны что-то вернуть) и хранимые процедуры (ничего не возвращают)


-- хранимая процедура
use test;

-- регистрируем новый разделитель в рамказ скрипта
delimiter $$

create procedure getUsers(yearFrom int, yearTo int)
begin
	select * from users
	where year(bday) between yearFrom and yearTo;
end $$

