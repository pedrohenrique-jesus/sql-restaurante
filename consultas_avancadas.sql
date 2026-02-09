use Restaurante;

-- Resumo de Pedidos
create or replace view resumo_pedido as
select pe.id_pedido, pe.quantidade, pe.data_pedido, c.nome_completo as cliente, c.email, f.nome_completo as funcionario, p.nome as produto, p.preco
from pedidos pe
left join clientes c on c.id_cliente = pe.id_cliente
left join funcionarios f on f.id_funcionario = pe.id_funcionario
left join produtos p on p.id_produto = pe.id_produto;

select * from resumo_pedido;

-- Total Gasto Em Cada Pedido
select id_pedido, cliente, sum(quantidade * preco) as total
from resumo_pedido
group by id_pedido, cliente;

-- Atualizando a View 'resumo_pedido', adicionando Campo Total
create or replace view resumo_pedido as
select pe.id_pedido, pe.quantidade, pe.data_pedido, 
c.nome_completo as cliente, c.email,
f.nome_completo as funcionario, 
p.nome as produto, p.preco, 
sum(pe.quantidade * p.preco) as total
from pedidos pe
left join clientes c on c.id_cliente = pe.id_cliente
left join funcionarios f on f.id_funcionario = pe.id_funcionario
left join produtos p on p.id_produto = pe.id_produto
group by pe.id_pedido, pe.quantidade, pe.data_pedido, cliente, c.email, funcionario, produto, p.preco;

select * from resumo_pedido;

-- Total Gasto Em Cada Pedido com View Atualizada
select id_pedido, cliente, total
from resumo_pedido;

-- EXPLAIN para verificar e compreender o JOIN que está oculto nessa query
explain select id_pedido, cliente, total
from resumo_pedido;

-- Função que retorna os ingredientes da tabela info produtos
delimiter //
create function BuscaIngredientesProduto(produtoID int)
returns varchar (400)
deterministic
reads sql data
begin
	declare IngredientesProduto Varchar(400);
    select  ingredientes into IngredientesProduto from info_produtos where id_produto = produtoID;
    return IngredientesProduto;
end //
delimiter ;

-- Função ‘BuscaIngredientesProduto’ com o id de produto 10
select BuscaIngredientesProduto(10);

-- Função para classificar o desempenho de vendas de um produto
DELIMITER //

create function mediaPedido(pedidoID int)
returns varchar(200)
reads sql data
begin
    declare valorMedia decimal(10,2);
    declare valorPedido decimal(10,2);
    declare desempenho varchar(200);

    -- Calcula a média de todos os pedidos
    select coalesce(avg(total), 0) into valorMedia from resumo_pedido;

    -- Obtém o valor total do pedido específico
    select coalesce(total, 0) into valorPedido from resumo_pedido where id_pedido = pedidoID;

    -- Compara o total do pedido com a média
    if valorPedido < valorMedia then
        set desempenho = 'Abaixo da Média';
    elseif valorPedido = valorMedia then
        set desempenho = 'Na Média';
    else
        set desempenho = 'Acima da Média';
    end if;

    return desempenho;
end //

DELIMITER ;

-- ‘mediaPedido’ com o id de pedido 5 e 6.
select mediaPedido(5);
select mediaPedido(6);
