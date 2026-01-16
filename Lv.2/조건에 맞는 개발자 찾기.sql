-- 문제 제목: 조건에 맞는 개발자 찾기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276034
-- ---

SELECT
    ID, 
    EMAIL, 
    FIRST_NAME, 
    LAST_NAME
FROM
    DEVELOPERS
WHERE
    SKILL_CODE & (
        SELECT
            CODE 
        FROM 
            SKILLCODES  
        WHERE
            NAME = 'Python'
    )
    OR
    SKILL_CODE & (
        SELECT
            CODE 
        FROM 
            SKILLCODES  
        WHERE
            NAME = 'C#'
    )
ORDER BY
    ID ASC;