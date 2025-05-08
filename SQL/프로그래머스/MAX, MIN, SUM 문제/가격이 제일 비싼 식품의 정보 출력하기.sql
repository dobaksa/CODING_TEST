/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/131115?language=oracle
문제 이름 : 가격이 제일 비싼 식품의 정보 출력하기
난이도 : LV2
*/

SELECT 
    *
FROM 
(
    SELECT
        *
    FROM 
        FOOD_PRODUCT 
    ORDER BY
        PRICE DESC
)
WHERE 1=1
    AND ROWNUM =1
;
