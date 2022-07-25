SELECT
  cohorts.name AS cohort,
  count(assignment_submissions.*) AS total_assignments
FROM
  assignment_submissions
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohort.id = cohort_id
GROUP BY
  cohorts.name
ORDER BY
  total_assignments desc