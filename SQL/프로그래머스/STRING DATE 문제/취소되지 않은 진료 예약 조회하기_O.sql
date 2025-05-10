/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/132204?language=oracle
문제 이름 : 취소되지 않은 진료 예약 조회하기
난이도 : LV3


조건 : 
1. APPOINTMENT => 예약일시가 2022년 4월 13일 이면서 cs이면서 취소 안된 만 확인 
2.
*/

SELECT
    A.APNT_NO APNT_NO,
    B.PT_NAME PT_NAME,
    B.PT_NO PT_NO,
    A.MCDP_CD MCDP_CD,
    C.DR_NAME DR_NAME,
    A.APNT_YMD APNT_YMD
FROM 
    APPOINTMENT A,
    PATIENT B,
    DOCTOR C
WHERE 1=1
    AND TO_CHAR(A.APNT_YMD,'YYYY-MM-DD') = '2022-04-13'
    AND A.APNT_CNCL_YN = 'N'
    AND A.MCDP_CD = 'CS'
    AND A.PT_NO = B.PT_NO
    AND A.MDDR_ID = C.DR_ID
ORDER BY
    APNT_YMD ASC
;
