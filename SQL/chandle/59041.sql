-- 코드를 입력하세요
/**
  SELECT : 이름과 해당 이름 수를 선택
  FROM : ANIMAL_INS 테이블로 부터
  GROUP BY : 이름으로 그룹을 만든다
  HAVING : 해당 이름의 수가 1번 보다 더 많이 가지고 있는 경우
  ORDER BY : 이름으로 정렬한다.
 */
SELECT NAME, count(NAME) as 'COUNT'
from ANIMAL_INS
Group by NAME
HAVING COUNT(NAME) >1
Order by NAME;