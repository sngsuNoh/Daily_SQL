-- 문제 제목: 특정 형질을 가지는 대장균 찾기
-- 문제 난이도: Lv.1
-- 문제 링크: https://school.programmers.co.kr/learn/courses/30/lessons/301646
-- ---

SELECT
    COUNT(*) AS COUNT
FROM 
    ECOLI_DATA
WHERE
    GENOTYPE & 2 != 2
    AND
    ((GENOTYPE & 4) = 4 OR (GENOTYPE & 1) = 1);