-- https://school.programmers.co.kr/learn/courses/30/lessons/59045
-- 보호소에서 중성화한 동물
SELECT t1.ANIMAL_ID, t1.ANIMAL_TYPE, t1.NAME FROM 
(
    SELECT o.*, i.SEX_UPON_INTAKE as SEX_UPON_BEFORE FROM ANIMAL_OUTS as o
    LEFT JOIN ANIMAL_INS as i
    ON o.ANIMAL_ID = i.ANIMAL_ID
) as t1
WHERE t1.SEX_UPON_OUTCOME != SEX_UPON_BEFORE
ORDER BY t1.ANIMAL_ID;