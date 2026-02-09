use restaurante; 

-- Produtos e seus ingerdientes:

select * from info_produtos;
select * from produtos;

select produtos.id_produto, produtos.nome, produtos.descricao, info_produtos.ingredientes
from produtos
join info_produtos on info_produtos.id_produto = produtos.id_produto;

-- Quantidade e Data dos pedidos de Cada cliente:

select * from pedidos;
select * from clientes;

select pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome_completo as cliente, c.email
from pedidos pe
join clientes c on c.id_cliente = pe.id_cliente;

-- Quantidade e Data dos pedidos de Cada cliente e Funcionário que Atendeu:

select * from pedidos;
select * from clientes;
select * from funcionarios;

select pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome_completo as cliente, c.email, f.nome_completo as atendido_por
from pedidos pe
join clientes c on c.id_cliente = pe.id_cliente
join funcionarios f on f.id_funcionario = pe.id_funcionario;

-- Quantidade e Data dos pedidos de Cada cliente, Funcionário que Atendeu, Nome e Preço do produto comprado:

select * from pedidos;
select * from clientes;
select * from funcionarios;
select * from produtos;

select pe.id_pedido, pe.quantidade, pe.data_pedido,
c.nome_completo as cliente, c.email as email_cliente,
f.nome_completo as atendido_por,
p.nome as produto, p.preco
from pedidos pe
join clientes c on c.id_cliente = pe.id_cliente
join funcionarios f on f.id_funcionario = pe.id_funcionario
join produtos p on p.id_produto = pe.id_produto;

-- Clientes com os pedidos com status ‘Pendente’ e exibir por ordem descendente de acordo com o id do pedido

select * from clientes;
select * from pedidos;

select c.nome_completo as cliente, pe.status
from pedidos pe 
join clientes c on c.id_cliente = pe.id_cliente
where pe.status = 'Pendente' 
order by pe.id_pedido desc;

-- Clientes sem pedidos

select * from clientes;
select * from pedidos;

select c.nome_completo as cliente, pe.id_pedido as pedido
from clientes c
left join pedidos pe on pe.id_cliente = c.id_cliente
where pe.id_pedido is null
order by cliente asc;

-- Nome do cliente e o total de pedidos cada cliente

select * from clientes;
select * from pedidos;

select c.nome_completo as cliente, count(pe.id_pedido) as total_pedidos
from clientes c 
left join pedidos pe on pe.id_cliente = c.id_cliente
group by cliente;

--  Preço total (quantidade*preco) de cada pedido

select * from pedidos;
select * from produtos;

select pe.id_pedido, sum(pe.quantidade * p.preco) as preco_total
from pedidos pe
left join produtos p on p.id_produto = pe.id_produto
group by pe.id_pedido;


