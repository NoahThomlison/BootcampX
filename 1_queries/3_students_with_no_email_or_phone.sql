SELECT name, id, cohort_id
FROM students
WHERE email IS NULL OR phone IS NULL;

-- \i 1_queries/3_students_with_no_email_or_phone.sql