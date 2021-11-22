SELECT day, COUNT(*) as total_assingments
FROM assignments 
GROUP BY day
HAVING COUNT(*) >=10
ORDER BY day

