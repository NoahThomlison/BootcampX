SELECT sum(completed_at-started_at) as total_duration
FROM assistance_requests
WHERE total_duration = (
  SELECT AVG(total_duration)
  FROM assistance_requests)
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
ORDER BY total_duration




;

-- \i 4_queries/9_cohort_average_assistance_duration.sql