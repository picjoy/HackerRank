
SELECT 
    CASE
        WHEN grades.grade >= 8 then students.name
    ELSE
        NULL
    END,
    grades.grade,
    students.marks
FROM
    students
JOIN 
    grades ON (
    students.marks BETWEEN grades.min_mark AND grades.max_mark
    )
ORDER BY
    grades.grade DESC,
    students.name NULLS LAST;
    
