/* 
Pivot the Occupation column in OCCUPATIONS so that each Name is sorted 
alphabetically and displayed underneath its corresponding Occupation. 
The output column headers should be Doctor, Professor, Singer, and Actor, respectively.
Note: Print NULL when there are no more names corresponding to an occupation.
*/

SELECT 
    MAX(CASE WHEN occupation="Doctor" THEN name  END) AS doctor,
    MAX(CASE WHEN occupation="Professor" THEN name  END) AS professor,
    MAX(CASE WHEN occupation="Singer" THEN name  END) AS singer,
    MAX(CASE WHEN occupation="Actor" THEN name  END) AS actor
FROM (
    SELECT name, occupation, ROW_NUMBER() OVER(PARTITION BY occupation ORDER BY name) row_num
    FROM occupations
    ) numbered_table
GROUP BY row_num;