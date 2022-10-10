----problem
Query the list of CITY names from STATION that do not start with vowels and do not end with vowels. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

------answer
select city
from station
where substr(city,1,1) not in ('A','E','I','O','U')
and substr(city, lengthb(city),1) not in ('a','e','i','o','u')
group by city;