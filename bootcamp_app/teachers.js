const { Pool } = require('pg');

let userInput = process.argv.slice(2)
const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT DISTINCT teachers.name AS teacher, cohorts.name
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = '${userInput[0]}'

ORDER BY teacher;
`)
.then(res => {
  res.rows.forEach(element => {
    console.log(`${element.teacher} : ${element.name}`)
  });
})
.catch(err => console.error('query error', err.stack));