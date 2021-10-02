SELECT assignments.id, assignments.day, assignments.chapter, assignments.name, COUNT(assistance_requests.*) AS total_requests
FROM assignments
JOIN assistance_requests ON assistance_requests.assignment_id = assignments.id
GROUP BY assignments.id 
ORDER BY total_requests DESC;

-- \i 4_queries/10_most_confusing_assignments.sql