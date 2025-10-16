-- LISTA 4 (Dificuldade 4/10) - Agregações e GROUP BY

-- Q1: Calcule o total de pedidos por cliente (mostre CompanyName e a contagem)
SELECT c.company_name, COUNT(o.order_id) AS number_of_orders FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY c.company_name
ORDER BY number_of_orders DESC;
-- Q2: Qual é o preço médio dos produtos por categoria (mostre CategoryName e preço médio)
SELECT c.category_name, AVG(p.unit_price) as avarage_product_price FROM products p 
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY c.category_name;
-- Q3: Mostre o total de produtos em estoque por categoria (CategoryName)
SELECT c.category_name, SUM(p.units_in_stock) AS total_stocked_products_per_category FROM products p
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY total_stocked_products_per_category DESC;
-- Q4: Quantos pedidos cada funcionário realizou? (mostre FirstName, LastName e a contagem)
SELECT e.first_name, e.last_name, COUNT(o.employee_id) as orders_by_employee FROM orders o
JOIN employees e ON o.employee_id = e.employee_id
GROUP BY e.first_name, e.last_name
ORDER BY orders_by_employee DESC;
-- Q5: Qual é o valor total de cada pedido? (some UnitPrice * Quantity de todos os itens do pedido)
SELECT order_id, SUM(unit_price * quantity) as total_by_order FROM order_details
GROUP BY order_id
ORDER BY total_by_order DESC;