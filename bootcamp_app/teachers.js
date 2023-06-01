const { Pool } = require('pg');

const pool = new Pool({
  user: 'meUser',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];
const value = [`%${cohort}%`]
const query = `
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name like $1
ORDER BY teacher;
`

console.log('connected');
pool.query(query, value)
.then(res => {
}).catch(err => console.error('error', err.stack)); 