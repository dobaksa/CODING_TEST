/*
문제링크 : https://school.programmers.co.kr/learn/courses/30/lessons/164671?language=oracle
문제 이름 : 조회수가 가장 많은 중고거래 게시판의 첨부파일 조회하기
난이도 : LV3

1. 
조회수가 가장 높은 중고거래 게시물에 대한 첨부 => USED_GOODS_BOARD에서 조회수 max로 조회수 가장 높은 게시물 찾기

2. 

USED_GOODS_FILE 에서 BOARD_ID로 모든 파일 조회 
*/

SELECT 
    '/home/grep/src/' || BOARD_ID || '/' || FILE_ID  || FILE_NAME || FILE_EXT FILE_PATH
FROM 
    USED_GOODS_FILE
WHERE 1=1
    AND BOARD_ID IN (
            SELECT 
                BOARD_ID
            FROM 
                (
                    SELECT
                        BOARD_ID,
                        VIEWS
                    FROM 
                        USED_GOODS_BOARD 
                    WHERE 1=1
                    ORDER BY
                        VIEWS DESC
                ) 
            WHERE 1=1 
                AND ROWNUM = 1
        )
ORDER BY
    FILE_ID DESC


;


    
