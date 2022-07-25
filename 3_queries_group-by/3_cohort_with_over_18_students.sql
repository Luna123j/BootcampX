SELECT
  cohorts.name AS cohort_name,
  count(sdudents.*) AS student_count
FROM
  cohorts
  JOIN students ON cohort.id = cohort_id
GROUP BY
  cohort_name
HAVING
  count(*) >= 18
ORDER BY
  student_count