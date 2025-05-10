/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/144856?language=oracle
문제 이름 : 저자 별 카테고리 별 매출액 집계하기
난이도 : LV2
*/

SELECT
    AUTHOR_ID,
    AUTHOR_NAME,
    CATEGORY,
    SUM(TOTAL_SALES) TOTAL_SALES
FROM 
    (
        
    SELECT
        B.AUTHOR_ID AUTHOR_ID,
        B.AUTHOR_NAME AUTHOR_NAME,
        A.CATEGORY CATEGORY,
        A.PRICE *  C.SALES  TOTAL_SALES
    FROM
        BOOK A,
        AUTHOR B,
        (
            SELECT
                BOOK_ID,
                SUM(SALES) SALES
            FROM 
                BOOK_SALES 
            WHERE 1=1
                AND TO_CHAR(SALES_DATE,'YYYYMM') = '202201'
            GROUP BY
                BOOK_ID
        ) C
    WHERE 1=1
        AND A.BOOK_ID = C.BOOK_ID   
        AND A.AUTHOR_ID = B.AUTHOR_ID

    )

GROUP BY
    AUTHOR_ID, AUTHOR_NAME, CATEGORY
ORDER BY
    AUTHOR_ID ASC, CATEGORY DESC


;
