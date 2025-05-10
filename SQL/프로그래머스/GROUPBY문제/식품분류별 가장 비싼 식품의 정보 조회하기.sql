/*

문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/131116?language=oracle
문제 이름 : 식품분류별 가장 비싼 식품의 정보 조회하기
난이도 : LV3

*/

SELECT 
    A.CATEGORY CATEGORY,
    B.MAX_PRICE MAX_PRICE,
    A.PRODUCT_NAME PRODUCT_NAME
FROM 
    FOOD_PRODUCT A,
    (
        SELECT
            CATEGORY,
            MAX(PRICE) MAX_PRICE
        FROM 
            FOOD_PRODUCT 
        WHERE 1=1
            AND CATEGORY IN ( '과자', '국', '김치', '식용유')
        GROUP BY
            CATEGORY
    ) B
WHERE 1=1
    AND A.CATEGORY = B.CATEGORY
    AND A.PRICE = B.MAX_PRICE
ORDER BY
    MAX_PRICE DESC
;
