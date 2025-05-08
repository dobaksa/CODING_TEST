/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/59408?language=oracle
문제 이름 : 중복 제거하기
난이도 : LV2
*/
SELECT 
    COUNT( DISTINCT NAME) 
FROM 
    ANIMAL_INS
WHERE 1=1
    AND NAME IS NOT NULL
;
