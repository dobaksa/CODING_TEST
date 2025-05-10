/*

문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/144855?language=oracle
문제 이름 : 카테고리 별 도서 판매량 집계하기

난이도 : LV3

*/
SELECT
    A.CATEGORY CATEGORY,
    SUM(B.SALES) TOTAL_SALES
FROM    
    BOOK A,
    BOOK_SALES B
WHERE 1=1
    AND A.BOOK_ID = B.BOOK_ID	
    AND TO_CHAR(B.SALES_DATE,'YYYYMM') ='202201'
GROUP BY
    A.CATEGORY
ORDER BY
    CATEGORY ASC
;
