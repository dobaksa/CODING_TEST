/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/301647?language=mysql
문제 이름 : 부모의 형질을 모두 가지는 대장균 찾기
난이도 : LV2
*/
/*

대장균별 형질을 구함 
현재 대장균의 부모의 형질을 보고 그걸 포함하고 있으면 출력 
A는 자식, B는 부모(기준은 자식기준)
*/

    SELECT
        A.ID,
        A.GENOTYPE,
        B.GENOTYPE PARENT_GENOTYPE  # B는 부모 테이블이므로 B의 형질을 SELECT하면됨
    FROM 
            ECOLI_DATA A 
        LEFT JOIN 
            ECOLI_DATA B
        ON A.PARENT_ID = B.ID

    WHERE 1=1
        AND A.PARENT_ID IS NOT NULL
        AND (A.GENOTYPE & B.GENOTYPE) = B.GENOTYPE
    ORDER BY 
        A.ID ASC
        
;
