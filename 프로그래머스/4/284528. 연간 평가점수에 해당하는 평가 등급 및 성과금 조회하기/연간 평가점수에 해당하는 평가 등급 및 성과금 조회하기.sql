-- 코드를작성해주세요
SELECT g.EMP_NO, e.EMP_NAME, 
  CASE 
       WHEN g.SCORE/2 >=96 THEN 'S'
       WHEN g.SCORE/2 >=90 THEN 'A'
       WHEN g.SCORE/2 >= 80 THEN 'B'
       ELSE 'C' 
     END AS GRADE,
   CASE     
        WHEN g.SCORE/2 >=96  THEN e.sal *0.2
        WHEN g.SCORE/2 >=90 THEN e.sal * 0.15
        WHEN g.SCORE/2 >= 80 THEN e.sal * 0.1
        ELSE 0
      END AS BONUS
FROM (
     SELECT 
        EMP_NO,
        SUM(SCORE) AS SCORE
     FROM HR_GRADE
     GROUP BY EMP_NO, YEAR
     ORDER BY SCORE DESC
) G
JOIN HR_EMPLOYEES e
ON e.EMP_NO = g.EMP_NO

ORDER BY g.EMP_NO;