
#https://school.programmers.co.kr/learn/courses/30/lessons/133025?language=oracle
# SQL- SELECT- LV1- 과일로 만든 아이스크림 고르기




SELECT
    A.FLAVOR
FROM 
    FIRST_HALF A,
    ICECREAM_INFO B
WHERE 1=1
    AND A.TOTAL_ORDER > 3000
    AND A.FLAVOR = B.FLAVOR
    AND B.INGREDIENT_TYPE = 'fruit_based'
ORDER BY
    A.TOTAL_ORDER DESC
;
