/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/132201?language=oracle
문제 이름 : 12세 이하인 여자 환자 목록 출력하기
난이도 : LV1
*/
SELECT
    PT_NAME PT_NAME,
    PT_NO PT_NO,
    GEND_CD GEND_CD,
    AGE AGE,
    NVL(TLNO,'NONE') TLNO
    
FROM 
    PATIENT
WHERE 1=1
    AND AGE <= 12
    AND GEND_CD ='W'
ORDER BY
    AGE DESC, PT_NAME ASC
;
