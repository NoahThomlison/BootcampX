SELECT teachers.name, students.name, assignments.name, (completed_at-started_at)
FROM assistance_requests
JOIN teachers ON teachers.id = teacher_id
JOIN students ON students.id = student_id
JOIN assignments ON assignments.id = assignment_id
ORDER BY (completed_at-started_at);

-- \i 4_queries/3_assistance_requests_data.sql