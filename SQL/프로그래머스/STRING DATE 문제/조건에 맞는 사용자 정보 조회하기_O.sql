
/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/164670?language=oracle
문제 이름 : 조건에 맞는 사용자 정보 조회하기
난이도 : LV3


1. 3건이상 등록된 사용자 조회 
2. 조회된 사용자의 정보를 조회해서 닉네임과 전체주소확인 
*/

SELECT 
    USER_ID USER_ID,
    NICKNAME NICKNAME,
    CITY || ' ' || STREET_ADDRESS1 || ' ' || STREET_ADDRESS2 전체주소,
    SUBSTR(TLNO,0,3) || '-' ||  SUBSTR(TLNO,4,4) || '-' || SUBSTR(TLNO,8,4) TLNO
FROM 
    USED_GOODS_USER 
WHERE 1=1
    AND USER_ID IN (
        SELECT
            WRITER_ID
        FROM 
            USED_GOODS_BOARD    
        WHERE 1=1
        GROUP BY
            WRITER_ID
        HAVING 
            COUNT(*) >= 3
    )
ORDER BY
    USER_ID DESC
    
;
