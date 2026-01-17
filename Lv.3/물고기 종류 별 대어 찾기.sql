-- 문제 제목: 물고기 종류 별 대어 찾기
-- 문제 난이도: Lv.3
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/293261
-- ---

SELECT
    FINFO.ID, 
    FNAME.FISH_NAME, 
    FINFO.LENGTH AS LENGTH
FROM
    FISH_INFO FINFO  
    JOIN
    FISH_NAME_INFO FNAME 
    ON 
    FINFO.FISH_TYPE = FNAME.FISH_TYPE 
WHERE
    FINFO.FISH_TYPE 
    IN
    (
        SELECT 
            FISH_TYPE 
        FROM 
            FISH_INFO 
        GROUP BY
            FISH_TYPE 
        HAVING
            LENGTH = MAX(LENGTH)
    )
ORDER BY
    FINFO.ID ASC;