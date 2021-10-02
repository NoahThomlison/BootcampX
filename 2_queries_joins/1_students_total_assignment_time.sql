SELECT SUM(assignment_submissions.duration)
FROM students JOIN assignment_submissions ON students.id = assignment_submissions.student_id
WHERE students.name = 'Ibrahim Schimmel';

-- \i 2_queries_joins/1_students_total_assignment_time.sql
