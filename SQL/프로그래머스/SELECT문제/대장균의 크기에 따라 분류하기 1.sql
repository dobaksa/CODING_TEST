/*
문제링크 :  https://school.programmers.co.kr/learn/courses/30/lessons/299307?language=mysql
문제 이름 : 대장균의 크기에 따라 분류하기 1
난이도 : LV1
*/
SELECT 
    ID,
    CASE 
        WHEN SIZE_OF_COLONY <= 100 THEN 'LOW'
        WHEN SIZE_OF_COLONY BETWEEN 100 AND 1000 THEN 'MEDIUM'
        WHEN SIZE_OF_COLONY > 1000 THEN 'HIGH'
    END SIZE
        
    
FROM
    ECOLI_DATA 
ORDER BY
    ID ASC
;
