/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/299305?language=mysql
문제 이름 : 대장균들의 자식의 수 구하기
난이도 : LV2
*/

SELECT 
    A.ID,
    COALESCE(B.CNT,0) CHILD_COUNT

FROM 
    ECOLI_DATA A LEFT JOIN
    (
        SELECT 
            PARENT_ID,
            COUNT(*) CNT 
        FROM 
            ECOLI_DATA 
        WHERE 1=1
            AND PARENT_ID IS NOT NULL
        GROUP BY 
            PARENT_ID
    ) B 
    ON A.ID = B.PARENT_ID
WHERE 1=1
ORDER BY 
     A.ID ASC
    ;
