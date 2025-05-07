/*

https://school.programmers.co.kr/learn/courses/30/lessons/151136?language=oracle
평균 일일 대여 요금 구하기 - SELECT - LV1


평균함수 AVG
반올림 함수 ROUND(값, 자리수)
*/

SELECT
    ROUND(AVG(NVL(DAILY_FEE, 0)),0) AVERAGE_FEE 
FROM 
    CAR_RENTAL_COMPANY_CAR 
WHERE 1=1
    AND CAR_TYPE = 'SUV'
;
