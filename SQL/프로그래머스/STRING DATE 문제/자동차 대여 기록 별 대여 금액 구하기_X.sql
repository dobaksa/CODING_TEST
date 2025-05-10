/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/151141?language=oracle
문제 이름 : 자동차 대여 기록 별 대여 금액 구하기
난이도 : LV4


1. CAR_RENTAL_COMPANY_RENTAL_HISTORY => car_id, 대여일수, 대여 타입, 
2. CAR_RENTAL_COMPANY_CAR => car_id 조인으로, CAR_TYPE 은 트럭, DAILY_FEE 조회



*/

SELECT 
     A.HISTORY_ID HISTORY_ID,
     FLOOR((A.DAILY_FEE - (A.DAILY_FEE * (NVL(B.DISCOUNT_RATE,0) * 0.01))) * A.DURATION_DATE) FEE
FROM 
    (
    SELECT  
        A.HISTORY_ID HISTORY_ID,
        A.CAR_ID CAR_ID, 
        A.END_DATE - A.START_DATE + 1 DURATION_DATE,
        CASE 
            WHEN (A.END_DATE - A.START_DATE + 1) >=90 THEN '90일 이상'
            WHEN (A.END_DATE - A.START_DATE + 1) >=30  THEN  '30일 이상'
            WHEN (A.END_DATE - A.START_DATE + 1) >=7 THEN '7일 이상'
        END DURATION_TYPE,
        B.DAILY_FEE DAILY_FEE,
        B.CAR_TYPE CAR_TYPE
    FROM 
        CAR_RENTAL_COMPANY_RENTAL_HISTORY A,
        CAR_RENTAL_COMPANY_CAR B
    WHERE 1=1
        AND A.CAR_ID = B.CAR_ID
        AND B.CAR_TYPE = '트럭'
        
    ) A,
    CAR_RENTAL_COMPANY_DISCOUNT_PLAN B
WHERE 1=1
    AND A.CAR_TYPE = B.CAR_TYPE(+)
    AND A.DURATION_TYPE = B.DURATION_TYPE(+)
ORDER BY
    FEE DESC, A.HISTORY_ID DESC
;
