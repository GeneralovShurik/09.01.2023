-- вызов процедуры
use test;

call getUsers(1987, 2010);

call newAge();

select avgAge('2000-01-12') as avg_age;


-- системные переменные с @@, пользовательские с @

set @a = avgAge('2000-01-12');
select @a * 10;

select * from  users 
where age > @a; 

call fixbday();