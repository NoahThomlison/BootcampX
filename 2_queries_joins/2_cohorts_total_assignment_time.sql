SELECT SUM(assignment_submissions.duration)
FROM assignment_submissions 
JOIN students 
ON assignment_submissions.student_id = students.id 
JOIN cohorts 
ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'FEB12';

-- -- \i 2_queries_joins/2_cohorts_total_assignment_time.sql;
