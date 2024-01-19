
select ascii('	');


 -- create database


-- use database
use viewdemo;

--  Find the ASCII value of characters

select ascii('p');

-- Find out length of character
 select character_length('ETL hive');


-- combine two strings 

select concat("Pradnya","Dabhade") as full_name;



create table student(s_id int primary key, 
                      firstname varchar(50),
                      lastname varchar(50));

insert into student values(1, 'Jack','Gosling');
insert into student values(2, 'Rithvik','Sharma');
insert into student values(3, 'Jaspreet','Bhatia');


select * from student;

select concat(firstname,' ',lastname) as fullname from student;


-- concat using concat_ws

select  concat_ws("_",firstname,"",lastname) as fullname from student;


-- display number in format

SELECT FORMAT(250500.5634, 2) as number1;




-- display number in percent format

select concat(format(0.94*100,2),"%") as percentage;

-- convert a string to lower case using lcase()

select lcase("ETLHIVE") as institute;

-- convert a string to upper case using upper()
select upper("etlhive") as institute;

-- find out length of string using length()



-- Left trim string uing ltrim()
 
  select  ltrim('    etlhive') as ltrim;
  
  
-- check length after trimming
select character_length('     etlhive') as len;

select  character_length(ltrim('    etlhive')) as ltrim;


select  character_length(rtrim(ltrim('    etlhive   '))) as trimmed_char;

select character_length('    etlhive   ') as len;
-- Right trim string using rtrim 
select  character_length(rtrim('    etlhive   '))as rtrim;
