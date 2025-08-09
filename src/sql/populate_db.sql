-- Insert 10 different workers
INSERT INTO worker (name, birthday, level, salary)
VALUES ('Alice Johnson', '1995-06-15', 'Junior', 950),
       ('Bob Smith', '1988-02-10', 'Middle', 3500),
       ('Carol Davis', '1990-11-30', 'Senior', 7200),
       ('David Lee', '1998-04-25', 'Trainee', 500),
       ('Eva Green', '1992-07-20', 'Junior', 1100),
       ('Frank Moore', '1985-03-08', 'Senior', 8000),
       ('Grace Hall', '1993-01-12', 'Middle', 4200),
       ('Henry Clark', '2000-09-19', 'Trainee', 700),
       ('Ivy Scott', '1991-05-04', 'Middle', 4800),
       ('Jack Turner', '1987-12-01', 'Senior', 10500);

-- Insert  5 clients
INSERT INTO client (name)
VALUES ('Acme Corp'),
       ('Globex Inc.'),
       ('Initech'),
       ('Umbrella Co.'),
       ('Soylent Systems');

-- Insert 10 projects (with durations between 1 and 100 months)
INSERT INTO project (client_id, start_date, finish_date)
VALUES (1, '2020-01-01', '2028-01-01'),
       (2, '2022-03-15', '2022-10-15'),
       (3, '2021-06-01', '2024-06-01'),
       (4, '2019-09-01', '2027-09-01'),
       (5, '2023-01-01', '2023-12-01'),
       (1, '2020-05-01', '2028-04-01'),
       (2, '2024-01-01', '2024-02-01'),
       (3, '2018-07-01', '2024-07-01'),
       (4, '2021-02-01', '2029-06-01'),
       (5, '2020-08-01', '2023-08-01');
-- 36 months

-- Assign workers to projects
INSERT INTO project_worker (project_id, worker_id)
VALUES (1, 1),
       (1, 3),
       (1, 5),
       (2, 2),
       (2, 6),
       (3, 4),
       (3, 7),
       (3, 8),
       (4, 3),
       (4, 9),
       (4, 10),
       (4, 1),
       (5, 5),
       (6, 6),
       (6, 7),
       (6, 2),
       (6, 4),
       (7, 1),
       (7, 8),
       (8, 2),
       (8, 3),
       (8, 4),
       (8, 5),
       (9, 6),
       (9, 7),
       (9, 8),
       (9, 9),
       (9, 10),
       (10, 1),
       (10, 2);
