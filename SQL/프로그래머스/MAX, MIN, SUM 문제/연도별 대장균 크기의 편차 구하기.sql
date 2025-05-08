/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/299310?language=mysql
문제 이름 : 연도별 대장균 크기의 편차 구하기 

난이도 : LV2
*/

SELECT 
    CONVERT(DATE_FORMAT(A.DIFFERENTIATION_DATE ,'%Y'), SIGNED) YEAR,
    B.MAX_SIZE - A.SIZE_OF_COLONY YEAR_DEV,
    A.ID
FROM 
    ECOLI_DATA A,
    (

        SELECT 
            DATE_FORMAT(DIFFERENTIATION_DATE ,'%Y') YEAR,
            MAX(SIZE_OF_COLONY) MAX_SIZE
        FROM 
            ECOLI_DATA 
        WHERE 1=1
        GROUP BY
            YEAR
    ) B
WHERE 1=1
    AND DATE_FORMAT(A.DIFFERENTIATION_DATE ,'%Y') = B.YEAR
ORDER BY
    YEAR ASC, YEAR_DEV ASC
;
    
