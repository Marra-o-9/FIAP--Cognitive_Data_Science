--Selecionando Todas as Colunas
SELECT *
FROM   departments;

--Selecionando Colunas Específicas
SELECT department_id, location_id
FROM   departments;

--Usando Operadores Aritméticos
SELECT last_name, salary, salary + 300
FROM   employees;

--Precedência de Operadores
SELECT last_name, salary, 12*salary+100
FROM   employees;

SELECT last_name, salary, 12*(salary+100)
FROM   employees;

--Definindo um Valor Nulo
SELECT last_name, job_id, salary, commission_pct
FROM   employees;

--Valores Nulos em Expressões Aritméticas
SELECT last_name, 12*salary*commission_pct
FROM   employees;

--Usando Apelidos de Colunas
SELECT last_name AS name, commission_pct comm
FROM   employees;

SELECT last_name "Name" , salary*12 "Annual Salary"
FROM employees;

--Operador de Concatenação
SELECT	'Nome: '||last_name||' tem o cargo de '||job_id AS "Employees"
FROM 	employees;

--Linhas Duplicadas
SELECT department_id
FROM   employees;

SELECT DISTINCT department_id
FROM   employees;

--6
DESC departments;

--7
DESC employees;

SELECT phone_number,
    last_name,
    job_id,
    hire_date AS STARTDATE
FROM employees;

--8
SELECT DISTINCT job_id
FROM employees;

--9
SELECT employee_id AS "Emp #",
    last_name AS "Employee",
    job_id AS "Job",
    hire_date AS "Hire Date",
    phone_number
FROM employees;

--10
SELECT last_name||', '||job_id "Employee and Title"
FROM employees;

