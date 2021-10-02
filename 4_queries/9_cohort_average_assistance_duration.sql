SELECT AVG(total_duration)
WHERE total_duration = (
SELECT SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM students
JOIN assistance_requests ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
ORDER BY total_duration)
;

-- \i 4_queries/9_cohort_average_assistance_duration.sql