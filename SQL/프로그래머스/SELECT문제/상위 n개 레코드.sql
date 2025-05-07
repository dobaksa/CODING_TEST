/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/59405?language=oracle
문제 이름 : 상위 n개 레코드
난이도 : LV1
*/
SELECT
    NAME
FROM 
    ANIMAL_INS 
WHERE 1=1 
    AND DATETIME = (
    SELECT 
        MIN(DATETIME)
    FROM 
        ANIMAL_INS
    
    
    )
;
