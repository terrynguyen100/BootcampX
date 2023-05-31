SELECT sum(duration) as total_duration
FROM assignment_submissions a
JOIN students s ON s.id = a.student_id
WHERE s.cohort_id in (select c.id from cohorts c where c.name = 'FEB12');

