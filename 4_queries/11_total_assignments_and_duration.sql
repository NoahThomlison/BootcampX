SELECT day, COUNT(day) AS number_of_assignments, SUM(duration)
FROM assignments
GROUP BY day
ORDER BY day;

-- \i 4_queries/11_total_assignments_and_duration.sql