-- 코드를 입력하세요
SELECT FACTORY_ID, FACTORY_NAME, ADDRESS
FROM FOOD_FACTORY
-- 주소에 강원도가 들어가 있고.
WHERE ADDRESS like '%강원도%'
-- ID를 통해 정렬한다.
order by FACTORY_ID;