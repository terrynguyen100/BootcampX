const { Pool } = require('pg');

const pool = new Pool({
  user: 'meUser',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

const cohort = process.argv[2];
const value = `%${cohort}%`
const numbOFstudents = process.argv[3];
const query = `
SELECT students.id as student_id, students.name as name, cohorts.name as cohort
FROM students 
JOIN cohorts ON cohorts.id = cohort_id WHERE cohorts.name like $1
LIMIT $2;
`

pool.query(query, [value, numbOFstudents])
.then(res => {
}).catch(err => console.error('error', err.stack)); 