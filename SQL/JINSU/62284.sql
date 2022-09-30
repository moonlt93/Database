-- 우유와 요거트가 담긴 바구니

--GROUP CONCAT  여러개의 결과물을 합친것
SELECT CART_ID
FROM (
    SELECT CART_ID, GROUP_CONCAT(NAME) AS NAMES
    FROM CART_PRODUCTS
    GROUP BY CART_ID
) TMP

WHERE NAMES LIKE '%Milk%'
    AND NAMES LIKE '%Yogurt%'
;

--서브 쿼리

SELECT
CART_ID
FROM
CART_PRODUCTS
WHERE CART_ID IN(SELECT
                CART_ID
                FROM
                CART_PRODUCTS
                WHERE NAME='MILK')
                AND NAME='YOGURT'
               GROUP BY CART_ID;

