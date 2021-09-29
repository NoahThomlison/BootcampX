SELECT name, email, id, cohort_id
FROM students
WHERE email != '%gmail.com' AND phone IS NULL;

-- \i 1_queries/4_students_with_not_gmail_email.sql



