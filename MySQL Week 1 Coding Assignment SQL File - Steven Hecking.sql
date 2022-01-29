SELECT * FROM employees WHERE birth_date < '1965-01-01' ORDER BY birth_date DESC LIMIT 20;

SELECT * FROM (
SELECT * FROM employees WHERE gender = 'F' AND hire_date > '1990-12-31' ORDER BY hire_date DESC LIMIT 20
) sub
ORDER BY hire_date ASC;

SELECT first_name, last_name FROM employees WHERE last_name LIKE 'F%' LIMIT 50;

INSERT INTO employees VALUES ('100', '1951-09-25', 'Mark', 'Hamill', 'M', '1977-05-25');
INSERT INTO employees VALUES ('101', '1956-10-21', 'Carrie', 'Fisher', 'F', '1977-05-25');
INSERT INTO employees VALUES ('102', '1942-07-13', 'Harrison', 'Ford', 'M', '1977-05-25');
SELECT * FROM employees;

UPDATE employees SET first_name = 'Bob' WHERE emp_no = '10023';
SELECT * FROM employees WHERE first_name = 'Bob';

UPDATE employees SET hire_date = '2002-01-01' WHERE first_name LIKE 'P%' OR last_name LIKE 'P%';
SELECT * FROM employees;

DELETE FROM employees WHERE emp_no < '10000';
SELECT * FROM employees;

DELETE FROM employees WHERE emp_no = '10048' OR emp_no = '10099' OR emp_no = '10234' OR emp_no = '20089';
SELECT * FROM employees WHERE emp_no >= '10040' AND emp_no <= '10050';