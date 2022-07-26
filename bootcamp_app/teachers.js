const { Client } = require('pg');

const client = new Client({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

client.connect();
const value = [process.argv[2]];

client.query(`
SELECT
  distinct teachers.name AS teacher,
  cohorts.name AS cohort
FROM
  assistance_requests
  JOIN teachers ON teachers.id = teacher_id
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = students.cohort_id
WHERE
  cohorts.name =  $1
ORDER BY
  teachers.name;
`, value)
  .then(res => {
    res.rows.forEach(teachers => {
      console.log(`${teachers.cohort} ${teachers.teacher}`);
    });
    client.end();
  })
  .catch(err => console.error('query error', err.stack));