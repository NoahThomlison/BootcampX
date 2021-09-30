SELECT day, count(day) 
FROM assignments 
GROUP BY day 
ORDER BY day;

-- \i 3_queries_group-by/1_assignments_per_day.sql
