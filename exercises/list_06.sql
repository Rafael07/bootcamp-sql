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
LIMIT 5
-- Q3: Calcule o valor total vendido por mês em 1997
SELECT * FROM orders
-- Q4: Quais clientes fizeram pedidos com produtos de mais de 3 categorias diferentes?
-- Q5: Mostre os funcionários e seus respectivos gerentes (self-join)