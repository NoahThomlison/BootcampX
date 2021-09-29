SELECT count(name)
FROM students
WHERE cohort_id = 1 OR cohort_id = 2 OR cohort_id = 3;

-- \i 1_queries/2_total_students_in_cohorts.sql
