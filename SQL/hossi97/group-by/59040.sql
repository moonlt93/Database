-- group by, having in ()
SELECT ANIMAL_TYPE, count(ANIMAL_TYPE) as count from ANIMAL_INS 
having ANIMAL_TYPE in ('Cat', 'Dog')
GROUP BY ANIMAL_TYPE
ORDER BY ANIMAL_TYPE;