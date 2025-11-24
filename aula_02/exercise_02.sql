-- 1. Obter todas as colunas das tabelas Clientes, Pedidos e Fornecedores
SELECT
  c.*,
  o.*,
  s.*
FROM customers c
JOIN orders o
  ON o.customer_id = c.customer_id
JOIN order_details od
  ON od.order_id = o.order_id
JOIN products p
  ON p.product_id = od.product_id
JOIN suppliers s
  ON s.supplier_id = p.supplier_id;
-- 2. Obter todos os Clientes em ordem alfabética por país e nome
SELECT * FROM customers
ORDER BY country, contact_name;
-- 3. Obter os 5 pedidos mais antigos
SELECT * FROM orders
ORDER BY order_date, order_id
LIMIT 5;
-- 4. Obter a contagem de todos os Pedidos feitos durante 1997
SELECT COUNT(*) AS pedidos_1997 FROM orders
WHERE EXTRACT(YEAR FROM order_date) = 1997;
-- 5. Obter os nomes de todas as pessoas de contato onde a pessoa é um gerente, em ordem alfabética
SELECT DISTINCT CONCAT(g.first_name, ' ', g.last_name) AS gerente 
FROM employees g 
JOIN employees f
    ON f.reports_to = g.employee_id
ORDER BY gerente;
-- 6. Obter todos os pedidos feitos em 19 de maio de 1997
SELECT * FROM orders
WHERE order_date = '1997-05-19';