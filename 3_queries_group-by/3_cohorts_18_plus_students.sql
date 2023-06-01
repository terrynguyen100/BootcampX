SELECT c.name as cohort_name, count(s.name) as student_count
FROM students s
JOIN cohorts c ON c.id = s.cohort_id
GROUP BY c.name
HAVING count(s.name) >= 18
ORDER BY student_count;