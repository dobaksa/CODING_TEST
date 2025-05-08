
/*

문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/151139?language=oracle
문제 이름 : 대여 횟수가 많은 자동차들의 월별 대여 횟수 구하기
난이도 : LV3


1.2022년 8월부터 2022년 10월까지 총 대여 횟수가 5회 이상인 자동차 id 구하기(대여 시작일 기준)
2. CARD_ID를 이용해서 그 자동의 월별 RECORD구하기
*/

SELECT 
    TO_NUMBER(TO_CHAR(START_DATE,'FM MM')) AS MONTH, 
    CAR_ID,
    COUNT(*) RECORDS
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 1=1
    AND TO_CHAR(START_DATE, 'YYYY-MM-DD') BETWEEN '2022-08-01' AND '2022-11-01'
    AND CAR_ID IN (
        SELECT
            CAR_ID
        FROM 
            CAR_RENTAL_COMPANY_RENTAL_HISTORY 
        WHERE 1=1
            AND TO_CHAR(START_DATE, 'YYYY-MM-DD') BETWEEN '2022-08-01' AND '2022-11-01'
        GROUP BY
            CAR_ID
        HAVING 
            COUNT(CAR_ID) >= 5
        )
GROUP BY
    TO_CHAR(START_DATE,'FM MM'), CAR_ID
ORDER BY
    MONTH ASC, CAR_ID DESC
;
    
    
    
