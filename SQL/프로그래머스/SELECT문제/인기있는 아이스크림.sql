/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/133024?language=oracle
문제 이름 : 인기있는 아이스크림
난이도 : LV1
*/
SELECT
    FLAVOR
FROM    
    FIRST_HALF
WHERE 1=1
ORDER BY
    TOTAL_ORDER DESC,
    SHIPMENT_ID ASC
;
