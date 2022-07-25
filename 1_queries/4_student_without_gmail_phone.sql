SELECT
  name,
  email,
  id,
  cohort_id
FROM
  students
WHERE
  email not LIKE ('%gmail.com')
  AND phone IS NULL;