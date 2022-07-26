SELECT
  avg(sums) AS average_total_duration
FROM
  (
    SELECT
      cohorts.name,
      sum(
        assistance_requests.completed_at - assistance_requests.started_at
      ) AS sums
    FROM
      students
      JOIN assistance_requests ON students.id = assistance_requests.student_id
      JOIN cohorts ON cohorts.id = cohort_id
    GROUP BY
      cohorts.id
    ORDER BY
      sums
  ) as total