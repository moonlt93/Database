-- https://school.programmers.co.kr/learn/courses/30/lessons/62284
-- 우유와 요거트가 담긴 장바구니
SELECT CART_ID FROM (
    SELECT CART_ID, GROUP_CONCAT(NAME SEPARATOR ' ') as 'name' from CART_PRODUCTS
    group by CART_ID
    having name LIKE ('%Milk%') and name LIKE('%Yogurt%')
    order by CART_ID
) as ci;