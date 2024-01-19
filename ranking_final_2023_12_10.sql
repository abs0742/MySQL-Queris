-- Ranking in mysql
-- dense_rank()
-- rank()
-- partition



-- create database rankdemo

create database rankdemo;

-- use database
use rankdemo;

-- create table result with columns subject,student_name and marks

create table result
(subject varchar(200),
student_name varchar(200),
marks int
);

-- view table

select * from result;
-- insert values in result table
insert into result
values ('English','Ishita',99),
('English','Aayush',99),
('Maths','Pooja', 100),
('Maths','Ajay',99),
('Maths','Simran',87),
('Maths','Chinmay',98);


-- display table result
select * from result
order by marks desc;


-- use dense_rank function 

select student_name,marks,dense_rank() 
over (order by marks desc)  as student_rank from result;





-- use rank() function

select student_name,marks,rank()
over ( order by marks desc) as student_rank
from result;




-- using partition for subject wise ranking

select subject,student_name,marks, dense_rank()
over(partition by subject order by marks desc) as rank_holders
from result;


insert into result
values ('English','Jay',98);

select subject,student_name,marks, rank()
over(partition by subject order by marks desc) as rank_holders
from result;



SELECT  s_id, score, dense_rank() 
OVER ( order by score desc ) 
AS 'dense_rank' FROM marks;                    

