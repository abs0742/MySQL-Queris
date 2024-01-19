create database sess8;

use sess8;

create table olympics1
(
ID	int, 
Name varchar(400),
Sex	char(2),
Age int,
Height int,
Weight int,
Team varchar(400),
NOC	varchar(400),
Games varchar(400),
Year int,
Season varchar(400),
City varchar(400),
Sport varchar(400),
Event varchar(400),
Medal varchar(200)

);

select * from olympics;




load data infile 'Athletes_Cleaned.csv'
into table olympics1
fields terminated by ','
enclosed by '"'
lines terminated by '\r\n'
ignore 1 rows;

select * from olympics
limit 5;


select count(*) from olympics1;


-- display countries who secured gold

select medal,count(medal) as medalcount
from olympics1
group by medal;


select * from olympics1
where medal="Gold";



show variables like 'secure_file_priv';