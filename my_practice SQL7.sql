create database country;
use country;


--  create table continent
create table continent
(
continent_code varchar(50),
continent_name varchar(200)
);


insert into continent
values('AS','Asia'),
('AF','Africa'),
('NA','North America'),
('SA','South America'),
('EU','Europe'),
('AU','Australia');

-- 






--  create table countries

create table countries
(
country_code varchar(100),
country_name varchar(200),
continent_code varchar(200)
);

insert into countries
values ('IN', 'India', 'AS'),
('ZA', ' South Africa', 'AF'),
('US', 'United States of America', 'NA'),
('BR', 'Brazil', 'SA'),
('AU','Australia','AU'),
('AQ','Antarctica','AN');



--- Inner join
select * from countries c1
join continent c2 
on c1.continent_code = c2.continent_code;


-- left join
select * from countries c1
left join continent c2
on c1.continent_code = c2.continent_code;


-- right join
select * from countries c1
right join continent c2
on c1.continent_code = c2.continent_code;


-- full join
select * from countries c1
left join continent c2
on c1.continent_code = c2.continent_code
union all
select * from countries c1
right join continent c2
on c1.continent_code = c2.continent_code;



-- self join
select c1.country_code,
c1.country_name,
c2.continent_code
from countries c1,
countries c2 where c1.continent_code = c2.continent_code;
