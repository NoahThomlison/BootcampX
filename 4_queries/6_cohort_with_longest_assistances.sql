SELECT cohorts.name, avg(completed_at - started_at) as average_assistance_time
FROM assistance_requests 
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY average_assistance_time  DESC

LIMIT 1 
-- HAVING avg(completed_at - started_at) =
-- SELECT MAX(Z)


-- -- 
-- -- (SELECT MAX(average)) 
-- -- FROM assistance_requests
-- -- (select avg(completed_at - started_at) as average_assistance_time))


-- ORDER BY average_assistance_time

;
-- \i 4_queries/6_cohort_with_longest_assistances.sql
