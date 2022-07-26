SELECT
  cohorts.name,
  avg(
    assistance_requests.completed_at - assistance_requests.started_at
  ) AS average_assistance_time
FROM
  students
  JOIN assistance_requests ON students.id = assistance_requests.student_id
  JOIN cohorts ON cohorts.id = cohort_id
GROUP BY
  cohorts.id
ORDER BY
  average_assistance_time DESC
LIMIT
  1