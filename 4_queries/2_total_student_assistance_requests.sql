SELECT COUNT(*) as total_assistances, students.name as name
FROM students 
JOIN assistance_requests ON assistance_requests.student_id= students.id
WHERE students.name = 'Elliot Dickinson'
GROUP BY students.name;
