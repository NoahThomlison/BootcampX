SELECT cohorts.name, SUM(completed_at - created_at) AS total_duration
FROM assistance_requests
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.id
GROUP BY cohorts.name
ORDER BY total_duration
;

-- \i 4_queries/9_cohort_average_assistance_duration.sql