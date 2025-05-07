/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/301646?language=mysql
문제 이름 : 특정 형질을 가지는 대장균 찾기
난이도 : LV3

비트연산으로 2를 포함하면 2가 나옴 안나오면 0임 => 포함 안하려면 0이나와야함
1,3을 포함하려면 1과 100을 비트연산했을때 1, 4가 나와야함 => 포함하니까 1을 포함하거나 4가 나오는 연산을 세주면됨
*/
SELECT 
    COUNT(*) COUNT
FROM 
    ECOLI_DATA 
WHERE 1=1
    AND (BIN(GENOTYPE) & b'10') = 0                     
    AND (((BIN(GENOTYPE) & b'1') = 1) OR ((BIN(GENOTYPE) & b'100') = 4))

;

