delimiter //
create function ultimo_actor()
returns int deterministic reads sql data
begin
declare actorid int;
select max(actor_id) into actorid from actor;
return actorid;
end //
delimiter ;