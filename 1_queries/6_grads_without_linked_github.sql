SELECT name,  email, phone
FROM students
WHERE end_date IS NOT NULL AND github IS NULL

-- \i 1_queries/6_grads_without_linked_github.sql