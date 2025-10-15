-- LISTA 2 (Dificuldade 2/10) - Filtros e Ordenação

-- Q1: Liste todos os produtos com preço unitário acima de $50, ordenados do mais caro para o mais barato
SELECT * FROM products
WHERE unit_price > 50
ORDER BY unit_price DESC;
-- Q2: Mostre os pedidos (Orders) feitos a partir de 1 de Janeiro de 1997
SELECT * FROM orders
WHERE order_date >= '1997-01-01';
-- Q3: Selecione os clientes (CompanyName) que estão em Londres
SELECT company_name FROM customers
WHERE city = 'London';
-- Q4: Liste os produtos que têm unidades em estoque (UnitsInStock) menor que o nível de reabastecimento (ReorderLevel)
SELECT * FROM products
WHERE units_in_stock < reorder_level;
-- Q5: Mostre os funcionários cujo título (Title) é "Sales Representative"
SELECT * FROM employees
WHERE title = 'Sales Representative';
