SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_duration
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name;

-- \i 4_queries/5_average_cohort_assistance_time.sql