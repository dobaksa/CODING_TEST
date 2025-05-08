/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/59046?language=oracle
문제 이름 : 루시와 엘라 찾기
난이도 : LV2

*/

SELECT
    ANIMAL_ID,
    NAME,
    SEX_UPON_INTAKE
FROM    
    ANIMAL_INS 
WHERE 1=1
    AND NAME IN ('Lucy', 'Ella', 'Pickle', 'Rogan', 'Sabrina', 'Mitty')
ORDER BY 
    ANIMAL_ID 
;
