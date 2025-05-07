/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/131536?language=oracle
문제 이름 : 재구매가 일어난 상품과 회원 리스트 구하기
난이도 : LV2
*/
SELECT
    USER_ID, PRODUCT_ID
FROM 
    ONLINE_SALE 
WHERE 1=1 

GROUP BY 
    USER_ID, PRODUCT_ID
HAVING 
    COUNT(*) >= 2
ORDER BY 
    USER_ID ASC,
    PRODUCT_ID DESC
;
