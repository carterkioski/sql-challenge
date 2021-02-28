CREATE TABLE titles(
	title_id VARCHAR(15),
	title VARCHAR(30),
	PRIMARY KEY(title_id)
);
CREATE TABLE employees(
	emp_no VARCHAR(15) PRIMARY KEY,
	emp_title_id VARCHAR(15),
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);
CREATE TABLE salaries(
	emp_no VARCHAR(15) PRIMARY KEY,
	salary INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
CREATE TABLE departments(
	dept_no VARCHAR(10) PRIMARY KEY,
	dept_name VARCHAR(30)
);
CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no VARCHAR(15),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no,emp_no)
);
CREATE TABLE dept_emp(
	dept_no VARCHAR(10),
	emp_no VARCHAR(15),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no,emp_no)
);
