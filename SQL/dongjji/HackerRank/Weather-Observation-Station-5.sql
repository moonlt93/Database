-- Weather Observation Station 5
-- https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

select city, char_length(city) from station
where char_length(city) = (
    select max(char_length(city)) from station
)
order by city 
limit 0, 1;

select city, char_length(city) from station
where char_length(city) = (
    select min(char_length(city)) from station
)
order by city
limit 0, 1;
