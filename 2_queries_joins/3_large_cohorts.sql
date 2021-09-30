SELECT cohorts.name, COUNT(cohorts.name)
FROM students 
JOIN cohorts
ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY  COUNT(students.name);

-- \i 2_queries_joins/3_large_cohorts.sql;