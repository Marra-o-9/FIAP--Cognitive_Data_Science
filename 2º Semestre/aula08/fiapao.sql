CREATE TABLE PRODUTO (
    cod_produto INT PRIMARY KEY,
    cod_categoria INT NOT NULL,
    produto VARCHAR(255),
    CONSTRAINT PRODUTO_UK UNIQUE (produto)
);

CREATE TABLE MATERIA_PRIMA (
    cod_materia_prima INT PRIMARY KEY,
    materia_prima VARCHAR(255),
    CONSTRAINT MATERIA_PRIMA_CK CHECK (materia_prima IN ('MADEIRA', 'PAPELÃO', 'INOX')),
    CONSTRAINT MATERIA_PRIMA_UK UNIQUE (materia_prima)
);


CREATE TABLE ITEM_PRODUTO (
    cod_produto INT,
    cod_materia_prima INT,
    quantidade INT,
    PRIMARY KEY (cod_produto, cod_materia_prima),
    FOREIGN KEY (cod_produto)
        REFERENCES PRODUTO (cod_produto),
    FOREIGN KEY (cod_materia_prima)
        REFERENCES MATERIA_PRIMA (cod_materia_prima)
);




SELECT last_name, salary
FROM employees
WHERE commission_pct IS NULL
ORDER BY salary DESC;


SELECT last_name, salary, department_id
FROM employees
WHERE salary >= 1000
AND (department_id = 60 OR department_id = 90)
AND last_name NOT LIKE 'A%';


SELECT last_name, salary
FROM employees
WHERE (department_id = 10 OR department_id = 20 OR department_id = 40)
ORDER BY salary DESC;


SELECT first_name || ' ' || last_name AS FULL_EMPLOYEE_NAME
FROM employees
WHERE commission_pct IS NULL;


