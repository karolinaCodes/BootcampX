SELECT day, COUNT(*) as total_assingments
FROM assignments 
GROUP BY day
ORDER BY day
