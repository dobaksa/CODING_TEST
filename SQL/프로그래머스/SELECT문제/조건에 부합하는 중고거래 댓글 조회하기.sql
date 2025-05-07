/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/164673?language=oracle
문제 이름 : 조건에 부합하는 중고거래 댓글 조회하기
난이도 : LV1
*/
SELECT
    A.TITLE TITLE,
    A.BOARD_ID BOARD_ID,
    B.REPLY_ID REPLY_ID,
    B.WRITER_ID WRITER_ID,
    B.CONTENTS CONTENTS,
    TO_CHAR(B.CREATED_DATE,'YYYY-MM-DD') CREATED_DATE
FROM 
    USED_GOODS_BOARD A,
    USED_GOODS_REPLY B
WHERE 1=1
    AND A.BOARD_ID = B.BOARD_ID
    AND TO_CHAR(A.CREATED_DATE,'YYYYMM') = '202210'
ORDER BY 
    CREATED_DATE ASC, TITLE ASC

