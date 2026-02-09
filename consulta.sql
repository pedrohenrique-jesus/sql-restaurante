use Restaurante;

-- Nome e categoria dos produtos que tem o preço superior a R$30.00
select nome, categoria, preco from produtos 
where preco > 30;

-- Nome, telefone e data de nascimento dos clientes que nasceram antes do ano de 1985
select nome_completo, telefone, data_nascimento from clientes
where year (data_nascimento) < 1985;

-- ID do produto e os ingredientes de info_produto para os ingredientes que contenham a palavra “carne”
select id_produto, ingredientes from info_produtos
where ingredientes like '%carne%';

-- Nome e a categoria dos produtos ordenados em ordem alfabética por categoria
select nome, categoria from produtos order by categoria asc, nome asc;

-- Os 5 produtos mais caros do restaurante
select preco, nome from produtos order by preco desc, nome asc limit 5;

-- 2 pratos principais da promoção diária
select nome, categoria from produtos 
where categoria = 'Prato Principal' 
order by nome asc
limit 2 offset 5;

-- Backup da tabela pedidos
create table backup_pedidos select * from pedidos;
select * from backup_pedidos;
 



