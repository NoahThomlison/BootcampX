SELECT cohorts.name, count(assignment_submissions.*)
FROM students 
JOIN cohorts
ON cohorts.id = students.cohort_id
JOIN assignment_submissions
ON assignment_submissions.student_id = students.id
GROUP BY cohorts.name
ORDER BY count(assignment_submissions.*) DESC;

-- \i 2_queries_joins/4_total_assignment_submission_by_cohorts.sql;