use restaurante;

-- Quantidade de pedidos

select count(id_pedido) as quantidade_pedidos from pedidos; -- 50

-- Quantidade de clientes únicos que realizaram pedidos

select count(distinct id_cliente) as clientes_unicos from pedidos; -- 24

-- Média de preço dos produtos

select round(avg(preco),2) as media_preco from produtos; -- R$23.12

-- Mínimo e máximo do preço dos produtos

select min(preco) as menor_preco from produtos; -- R$5.00
select max(preco) as maior_preco from produtos; -- R$45.00

-- 5 produtos mais caros

select nome, preco, row_number() over (order by preco desc) as ranking_preco from produtos limit 5;

-- Média dos preços dos produtos agrupados por categoria

select categoria, round(avg(preco),2) as media_preco from produtos group by categoria;

-- Selecionar o fornecedor e a quantidade de produtos que vieram daquele fornecedor da informações de produtos

select * from info_produtos;

select distinct fornecedor, count(id_produto) as produtos_fornecidos from info_produtos group by fornecedor order by fornecedor asc;

-- fornecedores que possuem mais de um produto cadastrado

select fornecedor, 
count(id_produto) as produtos_fornecidos from info_produtos
 group by fornecedor
 having count(id_produto) > 1
 order by fornecedor;
 
 -- Clientes que realizaram apenas 1 pedido
 
 select distinct id_cliente, count(id_pedido) as pedido from pedidos group by id_cliente having count(id_pedido) = 1;
 
 
 
 
 