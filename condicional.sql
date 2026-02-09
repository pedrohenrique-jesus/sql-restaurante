use Restaurante;

-- Pedidos que do id funcionário igual a 4 e status é igual a ‘Pendente’
select * from pedidos where id_funcionario = 4 and status = 'Pendente';

-- Pedidos que o status não é igual a ‘Concluído’
select * from pedidos where status <> 'Concluído';

-- Pedidos que contenham os id produtos: 1, 3, 5, 7 ou 8
select * from pedidos where id_produto in (1,3,5,7,8);

-- clientes que começam com a letra c
select nome_completo from clientes where nome_completo like 'C%';

-- Informações de produtos que contenham nos ingredientes ‘carne’ ou ‘frango’
select * from info_produtos where ingredientes like '%Carne%' or ingredientes like '%Frango%';

-- Produtos com o preço entre 20 a 30
select * from produtos where preco between 20 and 30;

-- Atualizar id pedido 6 da tabela pedidos para status = NULL

update pedidos
set status = NULL
where id_pedido = 6;

select * from pedidos where id_pedido = 6;

-- Pedidos com status nulos
select * from pedidos where status is NULL;

-- Atualizadno Status Nulos Para 'Cancelados'
select id_pedido, status, ifnull(status,'Cancelado') as status_atualizado from pedidos;

-- Coluna de Média Salarial
select nome_completo, cargo, salario,
	case
		when salario > 3000 then 'Acima da Média'
        else 'Abaixo Da Média'
	end as media_salario
from funcionarios;

