--  https://velog.io/@ljs7463/MySQL-%EC%9E%85%EC%96%91-%EC%8B%9C%EA%B0%81-%EA%B5%AC%ED%95%98%EA%B8%B02
set @hour = -1;

select  (  @hour := @hour+1 ) as hour ,
(select count (*) from animal_outs where hour(datetime) = @hour )  as cnt
from animal_outs
where @hour <23