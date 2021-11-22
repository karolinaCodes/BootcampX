SELECT SUM(assignment_submissions.duration) as total_duration
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON students.id= assignment_submissions.student_id
WHERE cohorts.name='FEB12'