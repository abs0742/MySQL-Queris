create database threetableJoin;
use threetablejoin;

create table student(s_id int primary key, 
                      s_name varchar(20));

insert into student values(1, 'Jack');
insert into student values(2, 'Rithvik');
insert into student values(3, 'Jaspreet');
insert into student values(4, 'Praveen');
insert into student values(5, 'Bisa');
insert into student values(6, 'Suraj');


create table marks(school_id int primary key, s_id int, 
                       score int, status varchar(20));
                       
                       
					
insert into marks values(1004, 1, 23, 'fail');
insert into marks values(1008, 6, 95, 'pass');
insert into marks values(1012, 2, 97, 'pass');
insert into marks values(1016, 7, 67, 'pass'); 
insert into marks values(1020, 3, 100, 'pass');
insert into marks values(1025, 8, 73, 'pass');
insert into marks values(1030, 4, 88, 'pass');
insert into marks values(1035, 9,  13, 'fail');
insert into marks values(1040, 5,  16, 'fail');
insert into marks values(1050, 10, 53, 'pass');    

select * from marks
order by s_id;   

create table details(address_city varchar(20), email_ID varchar(20), 
                      school_id int, accomplishments varchar(50));
                      
insert into details values('Banglore',  'jsingh@gmail.com', 
                                1020, 'ACM ICPC selected');
insert into details values('Hyderabad', 'praveen@gmail.com', 
                                1030, 'student of the month');
insert into details values('Delhi',     'rithvik@gmail.com', 
                                    1012, 'IOI finalist');
insert into details values('Chennai',   'om@gmail.com', 
                                 1111, 'student of the year');
insert into details values('Banglore', ' suraj@gmail.com',
                                 1008, 'IMO finalist');
insert into details values('Mumbai',    'sasukeh@gmail.com',
                                  2211, 'Made a robot');
insert into details values('Ahmedabad', 'itachi@gmail.com',
                               1172, 'Code Jam finalist');
insert into details values('Jaipur',    'kumar@gmail.com',
                                   1972, 'KVPY finalist');
                                   
select * from details;


select s_name, score, status, address_city, email_id,
accomplishments from student s inner join marks m on
s.s_id = m.s_id inner join details d on 
d.school_id = m.school_id;


