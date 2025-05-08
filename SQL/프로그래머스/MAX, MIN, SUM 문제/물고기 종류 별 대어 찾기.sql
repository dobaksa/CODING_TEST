/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/293261?language=mysql
문제 이름 :  물고기 종류 별 대어 찾기
난이도 : LV3
*/
SELECT 
    A.ID, 
    B.FISH_NAME,
    A.LENGTH

FROM 
    FISH_INFO A,
    FISH_NAME_INFO B

WHERE 1=1
    AND A.FISH_TYPE = B.FISH_TYPE
    AND (A.FISH_TYPE,A.LENGTH) IN 
        (


        SELECT 
            FISH_TYPE,
            MAX(LENGTH) LENGTH
        FROM 
            FISH_INFO 
        WHERE 1=1
        GROUP BY 
            FISH_TYPE
        ) 
ORDER BY
    A.ID ASC
;
