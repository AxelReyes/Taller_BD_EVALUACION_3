delimiter //
create function agregar_actor(first_name varchar(45),last_name varchar(45))
returns int deterministic modifies sql data
begin 
 declare num int;
declare resultado int;
declare num2 int;
declare actorid int;
select  max(actor_id) into actorid from actor;
set actorid=actorid+1;
 select count(*) into num from actor;
 insert into actor(actor_id,first_name,last_name)
 values(actorid,first_name,last_name);
 select count(*) into num2 from actor;
 set resultado = num2-num;
 return resultado;
end//
delimiter ;