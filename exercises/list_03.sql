-- LISTA 3 (Dificuldade 3/10) - JOINS Básicos

-- Q1: Mostre o nome do produto (ProductName) junto com o nome da sua categoria (CategoryName)
SELECT p.product_name, c.category_name FROM products AS p
JOIN categories AS c ON p.category_id = c.category_id;
-- Q2: Liste os pedidos (OrderID) com o nome da empresa (CompanyName) do cliente que fez cada pedido
SELECT o.order_id, c.company_name FROM orders as o
JOIN customers as c ON o.customer_id = c.customer_id;
-- Q3: Mostre o nome do funcionário (FirstName e LastName) junto com o título de cortesia (TitleOfCourtesy)
SELECT CONCAT(title_of_courtesy, ' ', first_name, ' ', last_name) FROM employees;
-- Q4: Liste os produtos (ProductName) e o nome dos seus fornecedores (CompanyName)
SELECT p.product_name, s.company_name FROM products AS p
JOIN suppliers AS s ON p.supplier_id = s.supplier_id;
-- Q5: Mostre os detalhes dos pedidos (OrderID, ProductID, UnitPrice, Quantity) com o nome do produto (ProductName)
SELECT o.order_id, o.product_id, o.unit_price, o.quantity, p.product_name FROM order_details AS o
JOIN products AS p ON o.product_id = p.product_id;