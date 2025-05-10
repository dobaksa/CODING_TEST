/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/164668?language=oracle
문제 이름 : 조건에 맞는 사용자와 총 거래금액 조회하기
난이도 : LV3
*/

SELECT 
    A.USER_ID USER_ID,
    A.NICKNAME NICKNAME,
    B.SUM_PRICE TOTAL_SALES
FROM 
    USED_GOODS_USER A,
    (
        SELECT
            WRITER_ID,
            SUM(PRICE) SUM_PRICE
        FROM 
            USED_GOODS_BOARD 
        WHERE 1=1
            AND STATUS ='DONE'
        GROUP BY
            WRITER_ID
        HAVING
             SUM(PRICE) >= 700000
    ) B
WHERE 1=1
    AND A.USER_ID = B.WRITER_ID
ORDER BY
    TOTAL_SALES ASC
;
    
