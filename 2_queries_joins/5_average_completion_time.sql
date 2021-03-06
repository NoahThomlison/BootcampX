SELECT students.name, AVG(assignment_submissions.duration)
FROM students 
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
WHERE students.end_date IS NULL
GROUP BY students.name
ORDER BY AVG(assignment_submissions.duration) DESC;

-- \i 2_queries_joins/5_average_completion_time.sql;
