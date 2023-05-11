delimiter //
create function factorial(num int)
returns int deterministic
begin 
declare resultado int;
set resultado = 1;
facto: loop
set resultado = resultado * num;
set num =num -1;
if num =1 then
leave facto;
end if;
end loop facto;
return resultado;
end//
delimiter ;