const {Pool} = require('pg');
const pool = new Pool({
  user : 'vagrant',
  password: '123',
  host: 'localhost',
  database:'bootcampx'
});




pool.query(`
  SELECT S.id,S.name,C.name AS cohort
  FROM students S
  JOIN cohorts C ON C.id = S.cohort_id
  WHERE C.name LIKE '%${process.argv[2]}%'
  LIMIT ${(process.argv[3] || 5)};`  
)
.then(data => {
  data.rows.forEach(user => {
    console.log(`User ${user.name} has id ${user.id} and was in the cohort ${user.cohort}`);
  });
  
})
.catch(error => {
  console.log('Query Error',error.stack);
});

