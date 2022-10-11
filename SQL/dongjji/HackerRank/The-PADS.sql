-- https://www.hackerrank.com/challenges/the-pads/problem?isFullScreen=true

SELECT CASE
        WHEN Occupation = 'Doctor' THEN CONCAT(NAME, '(D)')
        WHEN Occupation = 'Professor' THEN CONCAT(NAME, '(P)')
        WHEN Occupation = 'Singer' THEN CONCAT(NAME, '(S)')
        WHEN Occupation = 'Actor' THEN CONCAT(NAME, '(A)')
    END
FROM OCCUPATIONS
ORDER BY NAME;

SELECT CONCAT('There are a total of ', COUNT(Occupation), CONCAT(' ', LOWER(Occupation), 's.')) FROM OCCUPATIONS
GROUP BY OCCUPATION
ORDER BY COUNT(Occupation), OCCUPATION;