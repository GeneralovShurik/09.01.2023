-- СОЗДАНИЕ	 ХРАНИМОЙ ФУНКЦИИ	

use test;


delimiter $
 
create function avgAge(sdate date) 
returns float
reads sql data
begin
	-- declare должен распологаться в начале фкнкции/процедуры
	declare res float default 12.0;
 	select avg(age) into res from users
 	where bday  > sdate;
 
 
 return res;

end $
 