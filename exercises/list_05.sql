-- LISTA 5 (Dificuldade 5/10) - Subconsultas e Funções

-- Q1: Mostre os produtos que têm preço unitário acima da média de todos os produtos
SELECT * FROM products
WHERE unit_price > (SELECT AVG(unit_price) FROM products);
-- Q2: Liste os clientes que fizeram mais de 10 pedidos
SELECT customer_id, COUNT(order_id) AS number_of_orders FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) > 10
ORDER BY number_of_orders DESC;
-- Q3: Mostre o produto mais caro de cada categoria (CategoryName e ProductName)
-- Com subquery
SELECT c.category_name, p1.product_name FROM products p1
JOIN categories c ON p1.category_id = c.category_id
WHERE p1.unit_price = (
    SELECT MAX(unit_price) FROM products p2
    WHERE p2.category_id = p1.category_id
);
-- com CTE
with cte_Max_Price AS (
    SELECT category_id, MAX(unit_price) AS max_price FROM products
    GROUP BY category_id
)
SELECT c.category_name, p.product_name FROM products p
JOIN cte_Max_Price mp ON p.category_id = mp.category_id AND p.unit_price = mp.max_price
JOIN categories c ON p.category_id = c.category_id
-- Q4: Quais funcionários têm salário (campo Salary) acima da média salarial da empresa?
Não há o campo Salary nas tabela employees, portanto não há como fazer essa questão. 
-- Q5: Mostre os pedidos feitos no último trimestre de 1997 (outubro a dezembro)
SELECT * FROM orders
WHERE order_date BETWEEN '1997-10-01' AND '1997-12-31'

