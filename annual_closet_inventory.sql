-- First Step:
create database shirts_db;
-- Second Step
create table shirts (shirt_id int, article varchar(255), color varchar(255), shirt_size varchar(10), last_worn int);
-- Third Step
insert into shirts (shirt_id, article, color, shirt_size, last_worn)
values (1, 't-shirt', 'white', 'S', 10),
(2, 't-shirt', 'green', 'S', 200),
(3, 'polo shirt', 'black', 'M', 10),
(4, 'tank top', 'blue', 'S', 50),
(5, 't-shirt', 'pink', 'S', 0),
(6, 'polo shirt', 'red', 'M', 5),
(7, 'tank top', 'white', 'S', 200),
(8, 'tank top', 'blue', 'M', 15);

-- 1. Get all that data in there with a single line
select * from shirts;

-- 2. Add a new shirt, purple polo shirt, size M last worn 50 days ago
insert into shirts (shirt_id, article, color, shirt_size, last_worn)
values (9, 'polo shirt', 'purple', 'M', 50);

-- 3. SELECT all shirts but only print out article and color
select article, color from shirts;

-- 4. SELECT all medium shirts and print out everything but shirt_id 
select * from shirts
where shirt_size = 'M';

-- 5. Update all polo shirts Change their size to L
update shirts
set shirt_size = 'L'
where article = 'polo shirt';

-- 6. Update the shirt last worn 15 days ago change last_worn to zero ('0')
update shirts
set last_worn = 0
where last_worn = 15;

-- 7. Update all white shirts and change size to 'XS' and color to 'off white'
update shirts
set shirt_size = 'XS', color = 'off white';

-- 8. Delete all old shirts that were last worn 200 days ago
delete from shirts
where last_worn = 200;

-- 9. Delete all tank tops. Your tastes have changed...
delete from shirts
where article = 'tank top';

-- 10. Delete all shirts. You are doing some major spring cleaning!
delete from shirts;

-- 11. Drop the entire shirts table. Scraping everything... you must be rich or something!
drop table shirts;

























