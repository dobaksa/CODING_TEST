/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/273711?language=mysql
문제 이름 : 업그레이드 된 아이템 구하기
난이도 : LV2
*/
SELECT 
    A.ITEM_ID ITEM_ID,
    A.ITEM_NAME ITEM_NAME,
    A.RARITY RARITY
FROM 
    ITEM_INFO A,
    ITEM_TREE B
WHERE 1=1
    AND A.ITEM_ID = B.ITEM_ID
    AND B.PARENT_ITEM_ID IN (
        SELECT 
            ITEM_ID
        FROM 
            ITEM_INFO
        WHERE 1=1
            AND RARITY = 'RARE'
    )
ORDER BY
    ITEM_ID DESC
;
