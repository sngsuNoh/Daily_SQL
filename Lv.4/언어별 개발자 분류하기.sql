-- 문제 제목: 언어별 개발자 분류하기
-- 문제 난이도: Lv.4
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/276036
-- ---

SELECT
    CASE 
        WHEN 
            SKILL_CODE & (
                SELECT 
                    SUM(CODE) 
                FROM 
                    SKILLCODES 
                WHERE 
                    CATEGORY LIKE 'Front%'
            )
            AND SKILL_CODE & (
                SELECT 
                    CODE 
                FROM 
                    SKILLCODES 
                WHERE 
                    NAME = 'PYTHON'
            ) THEN 'A'
        WHEN 
            SKILL_CODE & (
                SELECT 
                    CODE
                FROM 
                    SKILLCODES 
                WHERE 
                    NAME = 'C#'
            ) THEN 'B'
        WHEN 
            SKILL_CODE & (
                SELECT 
                    SUM(CODE) 
                FROM 
                    SKILLCODES 
                WHERE 
                    CATEGORY LIKE 'Front%'
            ) THEN 'C'
        ELSE NULL
    END AS GRADE,
    ID,
    EMAIL
FROM
    DEVELOPERS
GROUP BY
    GRADE, ID, EMAIL
HAVING
    GRADE IS NOT NULL
ORDER BY 
    GRADE ASC,
    ID ASC;