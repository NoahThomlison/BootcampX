SELECT day, count(day) 
FROM assignments 
GROUP BY day 
HAVING count(day) > 10 
ORDER BY day;

-- \i 3_queries_group-by/2_assignments_per_day_greater_than_ten.sql