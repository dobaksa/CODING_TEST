/*
https://school.programmers.co.kr/learn/courses/30/lessons/59042

*/
SELECT
    A.ANIMAL_ID,
    A.NAME
FROM 
    ANIMAL_OUTS A,
    ANIMAL_INS B
WHERE 1=1
    AND A.ANIMAL_ID = B.ANIMAL_ID(+)
    AND B.ANIMAL_ID IS NULL
ORDER BY
    A.ANIMAL_ID
