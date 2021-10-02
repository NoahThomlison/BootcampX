SELECT DISTINCT teachers.name AS teacher, cohorts.name
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;

-- \i 4_queries/12_name_of_teachers_that_assisted.sql