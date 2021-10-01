-- SELECT cohorts.name, AVG(completed_at - started_at) as average_assistance_request_duration
-- FROM assistance_requests
-- JOIN cohorts ON students.cohort_id = cohorts.id
-- JOIN assistance_requests ON assistance_requests.student_id = students.id

SELECT cohorts.name, AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_duration
FROM students
JOIN cohorts ON students.cohort_id = cohorts.id
JOIN assistance_requests ON assistance_requests.student_id = students.id
GROUP BY cohorts.name


;



-- \i 4_queries/5_average_cohort_assistance_time.sql

-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.
-- Expected Result:

