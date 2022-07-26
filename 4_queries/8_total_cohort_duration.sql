SELECT
  cohorts.name,
  sum(
    assistance_requests.completed_at - assistance_requests.started_at
  ) AS total_duration
FROM
  students
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
GROUP BY
  cohorts.id
ORDER BY
  total_duration