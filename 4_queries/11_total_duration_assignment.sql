SELECT
  DAY,
  count(id),
  sum(duration)
FROM
  assignments
GROUP BY
  DAY
ORDER BY
  DAY