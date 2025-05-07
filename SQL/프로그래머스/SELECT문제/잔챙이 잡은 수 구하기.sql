/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/293258?language=mysql
문제 이름 : 잔챙이 잡은 수 구하기

난이도 : LV1
*/

SELECT
    COUNT(*) FISH_COUNT
FROM 
    FISH_INFO
WHERE 1=1
    AND LENGTH IS NULL
;
