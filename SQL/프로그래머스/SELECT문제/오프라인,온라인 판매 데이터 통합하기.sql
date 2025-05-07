/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/131537?language=oracle
문제 이름 : 오프라인,온라인 판매 데이터 통합하기
난이도 : LV4
*/
SELECT 
    TO_CHAR(SALES_DATE, 'YYYY-MM-DD') SALES_DATE, 
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM 
(
SELECT
    SALES_DATE,
    PRODUCT_ID,
    USER_ID,
    SALES_AMOUNT
FROM   
    ONLINE_SALE
WHERE 1=1
    AND TO_CHAR(SALES_DATE, 'YYYY-MM') = '2022-03'
UNION ALL
SELECT
    SALES_DATE,
    PRODUCT_ID,
    NULL,
    SALES_AMOUNT
FROM 
    OFFLINE_SALE
WHERE 1=1
    AND TO_CHAR(SALES_DATE, 'YYYY-MM') = '2022-03'
   
)
ORDER BY
   SALES_DATE ASC, PRODUCT_ID ASC, USER_ID ASC

    
    

