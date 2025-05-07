/*
문제링크 :  https://school.programmers.co.kr/learn/courses/30/lessons/131112?language=oracle
문제 이름 : 강원도에 위치한 생산공장 목록 출력하기
난이도 : LV1
*/

SELECT
    FACTORY_ID,
    FACTORY_NAME,
    ADDRESS
FROM    
    FOOD_FACTORY
WHERE 1=1 
    AND ADDRESS LIKE '강원도%'
ORDER BY 
    FACTORY_ID ASC
