-- Ranking in mysql



-- create database rankdemo



-- use database


-- create table result with columnssubject,student_name and marks


-- view table

-- insert values in result table



-- display table result



-- use dense_rank function 








-- use rank() function





insert into result1
values('Maths','Jay',98);


select subject,student_name ,marks,dense_rank()
over (partition by subject order by marks desc) as 'dense_rank' from result1;

SELECT  s_id, score, dense_rank() 
OVER ( order by score desc ) 
AS 'dense_rank' FROM marks;                    

