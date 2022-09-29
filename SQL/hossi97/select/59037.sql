-- Null 까지 처리해준다.
-- SELECT ANIMAL_ID, NAME from ANIMAL_INS where INTAKE_CONDITION <> 'Aged';
-- Null 에 대해선 처리해주지 않는다.
SELECT ANIMAL_ID, NAME from ANIMAL_INS where INTAKE_CONDITION != 'Aged';
