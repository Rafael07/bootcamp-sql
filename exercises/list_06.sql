-- LISTA 6 (Dificuldade 6/10) - Consultas Complexas

-- Q1: Liste os produtos que nunca foram vendidos (não existem na tabela order_details)
SELECT p.product_id, p.product_name FROM products p
WHERE NOT EXISTS (
    SELECT od.product_id FROM order_details od
    WHERE od.product_id = p.product_id
);
/*Após verificar que não houve retorno na minha resposta, testei as tabelas com produtos para saber
o exato número de produtos distintos em cada. No fim, é isso mesmo, ambas possuem 77 produtos.*/
SELECT COUNT(DISTINCT product_id) FROM products;
SELECT COUNT(DISTINCT product_id) FROM order_details;
-- Q2: Mostre os 5 produtos mais vendidos (por quantidade total vendida)
SELECT product_id, COUNT(product_id) AS total_vendido FROM order_details
GROUP BY product_id
ORDER BY total_vendido DESC
LIMIT 5;
-- Q3: Calcule o valor total vendido por mês em 1997
SELECT EXTRACT(MONTH FROM o.order_date) AS mes, SUM(od.unit_price * od.quantity) AS valor_total FROM orders o
JOIN order_details od ON o.order_id = od.order_id
WHERE EXTRACT(YEAR FROM o.order_date) = '1997'
GROUP BY mes;
-- Q4: Quais clientes fizeram pedidos com produtos de mais de 3 categorias diferentes?
WITH cte_distinct_cat_per_order AS (
    SELECT od.order_id, COUNT(DISTINCT p.category_id) AS distinct_cat_per_order FROM order_details od
    JOIN products p ON od.product_id = p.product_id
    GROUP BY order_id
    HAVING COUNT(DISTINCT p.category_id) > 3
)
SELECT o.order_id, c.company_name, ct.distinct_cat_per_order FROM orders o
JOIN cte_distinct_cat_per_order ct ON o.order_id = ct.order_id
JOIN customers c ON c.customer_id = o.customer_id;
-- Q5: Mostre os funcionários e seus respectivos gerentes (self-join)
SELECT 
    CONCAT(e.first_name, ' ', e.last_name) as employee, 
    CONCAT(m.first_name, ' ', m.last_name) as manager 
FROM employees e
LEFT JOIN employees m ON e.reports_to = m.employee_id
ORDER BY manager;
