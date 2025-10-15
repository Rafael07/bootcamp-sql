-- Lista 1 (Dificuldade 1/10) - Consultas Básicas

-- Q1: Selecione todos os campos da tabela Customers
SELECT * FROM customers;
-- Q2: Mostre os nomes e preços unitários dos produtos da tabela Products
SELECT product_name, unit_price FROM products;
-- Q3: Liste todos os produtos descontinuados (campo Discontinued)
SELECT * FROM products
WHERE discontinued = 1;
-- Q4: Mostre os nomes dos funcionários ordenados por sobrenome (LastName)
SELECT CONCAT(first_name, ' ', last_name) AS employees_names FROM employees
ORDER BY last_name;
-- Q5: Quantos produtos existem na categoria com ID = 1?
SELECT COUNT(*) FROM products
WHERE category_id = 1;