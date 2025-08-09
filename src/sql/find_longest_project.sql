SELECT
    p.id AS name,
    DATE_PART('year', AGE(p.finish_date, p.start_date)) * 12 +
    DATE_PART('month', AGE(p.finish_date, p.start_date)) AS month_count
FROM project p
WHERE (
          DATE_PART('year', AGE(p.finish_date, p.start_date)) * 12 +
          DATE_PART('month', AGE(p.finish_date, p.start_date))
          ) = (
          SELECT MAX(
                         DATE_PART('year', AGE(finish_date, start_date)) * 12 +
                         DATE_PART('month', AGE(finish_date, start_date))
                 )
          FROM project
      );