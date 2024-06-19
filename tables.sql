--------------------------* CREATE USERS TABLE
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    age INT NOT NULL,
    email VARCHAR(100) NOT NULL,
    phone VARCHAR(10) NOT NULL
);
--------------------------*

--------------------------* CREATE ROOMS TABLE
CREATE TABLE IF NOT EXISTS rooms (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    workspace_quantity INT NOT NULL
);
--------------------------*

--------------------------* CREATE WORKSPACES TABLE
CREATE TABLE IF NOT EXISTS workspaces (
    id SERIAL PRIMARY KEY,
    room_id INT NOT NULL,
    row_number INT NOT NULL,
    column_number INT NOT NULL,
    FOREIGN KEY (room_id) REFERENCES rooms (id)
);
--------------------------*

--------------------------* CREATE SESSIONS TABLE
CREATE TABLE IF NOT EXISTS sessions (
    id SERIAL PRIMARY KEY,
    time_start TIME NOT NULL,
    time_end TIME NOT NULL,
    description VARCHAR(150) NOT NULL,
    date DATE NOT NULL
);
--------------------------*

--------------------------* CREATE RESERVATIONS TABLE
CREATE TABLE IF NOT EXISTS reservations (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    workspace_id INT NOT NULL,
    session_id INT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users (id),
    FOREIGN KEY (workspace_id) REFERENCES workspaces (id),
    FOREIGN KEY (session_id) REFERENCES sessions (id)
);
--------------------------*

--------------------------* DROP TABLES
-- DROP TABLE IF EXISTS users CASCADE;

-- DROP TABLE IF EXISTS rooms CASCADE;

-- DROP Table IF EXISTS workspaces CASCADE;

-- DROP TABLE IF EXISTS sessions CASCADE;

-- DROP TABLE IF EXISTS reservations CASCADE;
--------------------------*
