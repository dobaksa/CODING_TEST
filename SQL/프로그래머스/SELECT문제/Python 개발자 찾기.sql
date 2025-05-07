/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/276013?language=mysql
문제 이름 : Python 개발자 찾기
난이도 : LV1
*/
SELECT
    ID ID,
    EMAIL EMAIL,
    FIRST_NAME FIRST_NAME,
    LAST_NAME LAST_NAME
FROM 
    DEVELOPER_INFOS 
WHERE 1=1 
    AND ((SKILL_1 = 'Python') OR (SKILL_2 = 'Python') OR (SKILL_3 = 'Python'))
ORDER BY
    ID ASC
;
