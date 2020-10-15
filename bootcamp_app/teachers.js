const {Pool} = require('pg');
const { database } = require('pg/lib/defaults');
const pool = new Pool({
  user:'vagrant',
  password:123,
  host:'localhost',
  database:'bootcampx'
});

pool.query(`
  SELECT DISTINCT T.name AS teacher,C.name AS cohort
  FROM assistance_requests AR 
  JOIN teachers T ON T.id = AR.teacher_id
  JOIN students S ON S.id = AR.student_id
  JOIN cohorts C ON C.id = S.cohort_id
  WHERE C.name LIKE $1
  ORDER BY T.name;
`,[`%${process.argv[2]}%`])
.then(data => {
  data.rows.forEach(t => {
    console.log(`${t.cohort} : ${t.teacher}`);
  })
  

})
.catch(error => {
  console.log(error.stack);
})

