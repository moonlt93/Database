-- 코드를 입력하세요

SELECT PRODUCT_ID, PRODUCT_NAME, PRODUCT_CD, CATEGORY, PRICE
FROM FOOD_PRODUCT
--가격 단위로 내림차순으로 바꾼 후 1위만 출력
order by PRICE desc
    limit 1;