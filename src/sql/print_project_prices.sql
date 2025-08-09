SELECT p.name,
       (
           DATE_PART('year', AGE(p.finish_date, p.start_date)) * 12 +
           DATE_PART('month', AGE(p.finish_date, p.start_date))
           ) * SUM(w.salary) AS price
FROM project p
         JOIN project_worker pw ON p.id = pw.project_id
         JOIN worker w ON pw.worker_id = w.id
GROUP BY p.id, p.name, p.start_date, p.finish_date
ORDER BY price DESC;
