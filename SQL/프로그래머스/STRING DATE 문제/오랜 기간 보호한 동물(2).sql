/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/59411?language=oracle
문제 이름 : 오랜 기간 보호한 동물(2)
난이도 : LV3

1. ANIMAL_OUTS ANIMAL_INS에서 입양기간을 뽑아내고 내림차순 정렬해서 보호기간이 가장긴 동물 두마리의 아이디 확인

*/
SELECT 
    ANIMAL_ID ANIMAL_ID,
    NAME NAME
FROM 
    (
    SELECT
        A.ANIMAL_ID ANIMAL_ID,
        A.DATETIME - B.DATETIME DURATION_DATE,
        A.NAME NAME
    FROM 
        ANIMAL_OUTS A,
        ANIMAL_INS B
    WHERE 1=1
        AND A.ANIMAL_ID = B.ANIMAL_ID
    ORDER BY
        DURATION_DATE DESC
    )
WHERE 1=1
    AND ROWNUM < 3
;

    
    
