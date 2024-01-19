create database date_functions;

use date_functions;



-- extract day of the month value from date
SELECT DATE_FORMAT("2020-11-23", "%D") as date;

-- extract month of the month value from date
SELECT DATE_FORMAT("2020-11-23", "%M") as month;

-- extract year of the month value from date
SELECT DATE_FORMAT("2023-11-23", "%y") as year;

-- Getting month day and year as “November 23 2020” from the specified date “2020-11-23”.

SELECT DATE_FORMAT("2023-11-23", "%Y,%m,%d") as details;


-- Fetch hour as from the specified date and time “2020-11-23 19:09:23”.

select date_format("2020-11-23 19:09:23", "%h")as hour;

-- Fetch minutes as from the specified date and time “2020-11-23 19:09:23”.

select date_format("2020-11-23 19:09:23", "%i")as minutes;

-- DATE_SUB() function in MySQL is used to subtract a specified time or date interval to a specified date and then returns the date.

SELECT DATE_SUB("2023-11-22", INTERVAL 5 YEAR) as 5_yrs_back;


SELECT DATE_SUB("2020-11-22", INTERVAL 10 DAY) as 10_days_back;


SELECT DATE_SUB("2020-11-22 09:12:10", INTERVAL 10 minute);

-- display current_time
SELECT CURRENT_TIME as Curr_time ;

-- display durrent date
SELECT CURRENT_DATE as Curr_date ;


create table timetable
(
id int,
date_of_joining date);

insert into timetable
values (1,current_date()),
(2,current_date()),
(3,current_date());

select * from timetable;



-- display day of week  
-- This function in MySQL is used to return the weekday index for a specified date (a number from 1 to 7).
-- 1-Sunday, 2- Monday
SELECT DAYOFWEEK("1985-12-18");


-- The PERIOD_DIFF() function returns the difference between two periods. The result will be in months.

SELECT PERIOD_DIFF(202301, 198801);

-- here output is 420 so 420/12= 35 yrs difference


-- Time difference
SELECT TIMEDIFF("2023-11-04 1:00:00", "2023-12-06 1:00:00") as time_difference;