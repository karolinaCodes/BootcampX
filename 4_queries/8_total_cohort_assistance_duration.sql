-- My Solution, order of joins differs and produces incorrect reuslts
-- SELECT cohorts.name as cohort, SUM(completed_at- started_at) as total_duration
-- FROM cohorts
-- JOIN students ON cohort_id= cohorts.id
-- JOIN assistance_requests ON student_id= assistance_requests.id
-- GROUP BY cohorts.name
-- ORDER BY total_duration;

SELECT cohorts.name as cohort, sum(completed_at-started_at) as total_duration
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts on cohorts.id = cohort_id
GROUP BY cohorts.name
ORDER BY total_duration;