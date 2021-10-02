SELECT avg(started_at - created_at) 
FROM assistance_requests;

-- \i 4_queries/7_average_assistance_request_wait_time.sql