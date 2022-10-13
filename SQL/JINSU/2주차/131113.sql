-- 조건별로 분류하여 주문상태 출력하기
-- 5월 1일까지 출고 완료
-- 이후는 출고 대기 OR 미정으로 출력
-- 결과는 주문ID를 기준으로 오름 차순

SELECT ORDER_ID, PRODUCT_ID,DATE_FORMAT(OUT_DATE, '%Y-%m-%d'),
CASE WHEN OUT_DATE > '2022-05-01' THEN '출고대기'
    WHEN OUT_DATE <= '2022-05-01' THEN '출고완료'
    ELSE'출고미정' END AS 출고여부
FROM FOOD_ORDER

ORDER BY ORDER_ID ASC;

-- 와 DATE_FORMAT 때매 틀리고 있는거라고 생각지도 못함.