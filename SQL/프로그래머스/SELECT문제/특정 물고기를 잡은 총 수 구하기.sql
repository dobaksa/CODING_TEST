/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/298518?language=mysql
문제 이름 : 특정 물고기를 잡은 총 수 구하기
난이도 : LV2
테이블마다 BASS, SNAPPER의 fish_type은 달라질 수 있으므로 조회하는 서브쿼리가 필요함
*/

SELECT
    COUNT(*) FISH_COUNT
FROM 
    FISH_INFO A,
    FISH_NAME_INFO B
WHERE 1=1 
    AND A.FISH_TYPE = B.FISH_TYPE
    AND B.FISH_TYPE IN (
        SELECT 
            FISH_TYPE
        FROM 
            FISH_NAME_INFO 
        WHERE 1=1
            AND FISH_NAME IN ('BASS','SNAPPER' )
    )
;


