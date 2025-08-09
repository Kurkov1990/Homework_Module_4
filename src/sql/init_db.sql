-- Create the 'workers' table
CREATE TABLE IF NOT EXISTS worker
(
    id       SERIAL PRIMARY KEY,
    name     VARCHAR(1000) NOT NULL CHECK (char_length(name) BETWEEN 2 AND 1000),
    birthday DATE CHECK (EXTRACT(YEAR FROM birthday) > 1900),
    level    VARCHAR(20)   NOT NULL CHECK (level IN ('Trainee', 'Junior', 'Middle', 'Senior')),
    salary   INTEGER       NOT NULL CHECK (salary BETWEEN 100 AND 100000)
);

-- Create the 'clients' table
CREATE TABLE IF NOT EXISTS client
(
    id   SERIAL PRIMARY KEY,
    name VARCHAR(1000) NOT NULL CHECK (char_length(name) BETWEEN 2 AND 1000)
);

-- Create the 'projects' table
CREATE TABLE IF NOT EXISTS project
(
    id          SERIAL PRIMARY KEY,
    client_id   INTEGER NOT NULL REFERENCES client (id) ON DELETE CASCADE,
    start_date  DATE,
    finish_date DATE
);

-- Create the table for many-to-many relationship between workers and projects
CREATE TABLE IF NOT EXISTS project_worker
(
    project_id INTEGER NOT NULL REFERENCES project (id) ON DELETE CASCADE,
    worker_id  INTEGER NOT NULL REFERENCES worker (id) ON DELETE CASCADE,
    PRIMARY KEY (project_id, worker_id)
);
