----problem
Query the list of CITY names from STATION which have vowels (i.e., a, e, i, o, and u) as both their first and last characters. Your result cannot contain duplicates.

Input Format

The STATION table is described as follows:

https://s3.amazonaws.com/hr-challenge-images/9336/1449345840-5f0a551030-Station.jpg

------answer
select city
from station
where substr(lower(city),1,1) in ('a','e','i','o','u')
and substr(lower(city),lengthb(city),1) in ('a','e','i','o','u')
group by city;