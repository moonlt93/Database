-- 코드를 입력하세요
SELECT c.count FROM
(
    SELECT COUNT(DISTINCT NAME) as 'count' FROM ANIMAL_INS
) as c
WHERE c.count IS NOT NULL;