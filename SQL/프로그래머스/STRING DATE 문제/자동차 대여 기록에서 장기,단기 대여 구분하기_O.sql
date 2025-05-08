/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/151138?language=oracle
문제 이름 : 자동차 대여 기록에서 장기,단기 대여 구분하기
난이도 : LV2
*/

SELECT
    HISTORY_ID,
    CAR_ID,
    TO_CHAR(START_DATE, 'YYYY-MM-DD') START_DATE,
    TO_CHAR(END_DATE, 'YYYY-MM-DD') END_DATE,
    CASE 
        WHEN (END_DATE - START_DATE + 1) >= 30 THEN '장기 대여'
    ELSE '단기 대여'
    END RENT_TYPE
FROM 
    CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE 1=1
    AND TO_CHAR(START_DATE, 'YYYY-MM') = '2022-09'
ORDER BY
    HISTORY_ID DESC
;
