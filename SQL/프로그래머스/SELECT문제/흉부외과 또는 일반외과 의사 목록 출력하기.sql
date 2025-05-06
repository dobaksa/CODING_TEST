# https://school.programmers.co.kr/learn/courses/30/lessons/132203?language=oracle
# 


-- 코드를 입력하세요
SELECT
    DR_NAME,
    DR_ID,
    MCDP_CD,
    TO_CHAR(HIRE_YMD, 'YYYY-MM-DD')
FROM 
    DOCTOR
WHERE 1=1
    AND MCDP_CD ='CS' OR MCDP_CD ='GS'
ORDER BY 
    HIRE_YMD DESC, DR_NAME ASC
;
