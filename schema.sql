
CREATE TABLE employees
(
	emp_no INTEGER NOT NULL,
	emp_title VARCHAR(30),
	birth_date DATE NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	sex VARCHAR(3) NOT NULL,
	hire_date DATE NOT NULL,
	PRIMARY KEY (emp_no)
);

CREATE TABLE departments
(
	dept_no VARCHAR(30),
	dept_name VARCHAR(40) NOT NULL,
	PRIMARY KEY(dept_no)
);

CREATE TABLE dept_emp
(
	emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	
);

CREATE TABLE dept_manager
(
	dept_no VARCHAR(30) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE salaries
(
	emp_no INTEGER NOT NULL,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles
(
	title_id VARCHAR(30),
	title VARCHAR(30)
);





