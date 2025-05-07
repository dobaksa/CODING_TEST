/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/131120?language=oracle
문제 이름 : 3월에 태어난 여성 회원 목록 출력하기
난이도 : LV2
*/
SELECT 
    MEMBER_ID MEMBER_ID,
    MEMBER_NAME MEMBER_NAME,
    GENDER GENDER,
    TO_CHAR(DATE_OF_BIRTH, 'YYYY-MM-DD') DATE_OF_BIRTH
FROM    
    MEMBER_PROFILE
WHERE 1=1
    AND GENDER = 'W'
    AND TO_CHAR(DATE_OF_BIRTH, 'MM') = '03'
    AND TLNO IS NOT NULL
ORDER BY 
    MEMBER_ID ASC
;
