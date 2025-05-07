/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/301649?language=mysql
문제 이름 : 대장균의 크기에 따라 분류하기 2
난이도 : LV2

NITLE 함수로 해결 
*/
SELECT 
    ID,
    CASE NTILE(4) OVER(ORDER BY SIZE_OF_COLONY DESC)
        WHEN 1 THEN 'CRITICAL'
        WHEN 2 THEN 'HIGH'
        WHEN 3 THEN 'MEDIUM'
        WHEN 4 THEN 'LOW'
    END COLONY_NAME
FROM 
    ECOLI_DATA 
ORDER BY
ID ASC
    
    
