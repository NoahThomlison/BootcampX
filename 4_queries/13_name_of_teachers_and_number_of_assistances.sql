SELECT DISTINCT teachers.name AS teacher, cohorts.name, COUNT(assistance_requests.*) AS total_assistances
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teacher, cohorts.name
ORDER BY teacher;

-- \i 4_queries/13_name_of_teachers_and_number_of_assistances.sql