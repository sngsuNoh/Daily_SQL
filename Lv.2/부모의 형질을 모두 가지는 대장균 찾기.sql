-- 문제 제목: 부모의 형질을 모두 가지는 대장균 찾기
-- 문제 난이도: Lv.2
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301647
-- ---

SELECT
    E.ID, 
    E.GENOTYPE,
    P.GENOTYPE AS PARENT_GENOTYPE
FROM
    ECOLI_DATA E
    JOIN
    ECOLI_DATA P
    ON 
    E.PARENT_ID = P.ID 
WHERE
    E.GENOTYPE & P.GENOTYPE = P.GENOTYPE
ORDER BY 
    E.ID ASC;