SELECT c.name as cohort, count(a.*) as total_submissions
FROM cohorts c
JOIN students s ON c.id = s.cohort_id
JOIN assignment_submissions a ON a.student_id = s.id
GROUP BY c.name
ORDER BY total_submissions DESC
