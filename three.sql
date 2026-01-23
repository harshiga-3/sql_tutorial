alter table Employee add  hire date;
SET SQL_SAFE_UPDATES = 0;
update Employee set hire="26-07-09";
select now();
select date(now());

select curdate();