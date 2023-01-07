CREATE TABLE Departments (
	department VARCHAR PRIMARY KEY,
	id_chief INTEGER UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS Employees (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	department VARCHAR NOT NULL REFERENCES Departments(department),
	id_chief INTEGER NOT NULL REFERENCES Departments(id_chief)
);
