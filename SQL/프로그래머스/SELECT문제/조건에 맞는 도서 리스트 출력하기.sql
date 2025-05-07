/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/144853?language=oracle
문제 이름 : 조건에 맞는 도서 리스트 출력하기

난이도 : LV1
*/
SELECT
    BOOK_ID BOOK_ID,
    TO_CHAR(PUBLISHED_DATE, 'YYYY-MM-DD') PUBLISHED_DATE
FROM    
    BOOK 
WHERE 1=1 
    AND TO_CHAR(PUBLISHED_DATE, 'YYYY') = '2021'
    AND CATEGORY = '인문'
ORDER BY
    PUBLISHED_DATE ASC
;
    
