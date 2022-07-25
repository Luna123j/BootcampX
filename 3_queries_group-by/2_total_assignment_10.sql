SELECT
  DAY,
  count(*) AS total_assignments
FROM
  assignments
GROUP BY
  DAY
HAVING
  count(*) >= 10
ORDER BY
  DAY