create database Restaurante;
use Restaurante;
create table funcionarios(
id_funcionario int auto_increment primary key, #identificador único para cada funcionário
nome_completo varchar(255), #nome completo do funcionário
cpf varchar (14), #CPF do funcionário
data_nascimento date, #data de nascimento do funcionário
endereco varchar(255), #Endereço Residencial do funcionário
telefone varchar(15), #Número de telefone do funcionário
email varchar(100), #E-mail do duncionário
cargo varchar (100), #Cargo do funcionário no Restaurante
salario decimal(10,2), #Salário do funcionário
data_admissão date #data de admissão do funcionário
);

use Restaurante;
create table clientes(
id_cliente int auto_increment primary key, #identificador único para cada cliente
nome_completo varchar(255), #Nome completo do cliente
cpf varchar(14), #cpf do cliente
data_nascimento date, #data de nascimento do cliente
endereco varchar(255), #endereço residencial do cliente
telefone varchar(15), #número de telefone do cliente
email varchar(100), #E-mail do cliente
data_cadastro date #data em que o cliente se cadastrou no sistema
);

use Restaurante;
create table produtos(
id_produto int auto_increment primary key, #identificador único para cada produto
nome varchar(255), #nome do produto
descricao text, #Descrição detalhada do produto
preco decimal(10,2), #Preço do produto
categoria varchar(100) #Categoria do produto
);

use Restaurante;
create table pedidos(
id_pedido int auto_increment primary key, #identificador único para cada pedido
id_cliente int,
foreign key (id_cliente) references clientes(id_cliente), #referência ao cliente que fez o pedido
id_funcionario int,
foreign key (id_funcionario) references funcionarios(id_funcionario), #Referência ao funcionário que atendeu o pedido
id_produto int,
foreign key (id_produto) references produtos(id_produto), #Referência ao produto vendido
quantidade int, #quantidade do produto vendido
preco decimal(10,2), #preço do produto no momento do pedido
data_pedido date, # data em que o pedido foi analisado
status varchar(50) #status do pedido (pendente, concluído ou cancelado)
);

use Restaurante;
create table info_produtos(
id_info int auto_increment primary key, #identificador único para cada informação
id_produto int,
foreign key (id_produto) references produtos(id_produto), #referência ao produto
ingredientes text, #lista de ingredientes de produtos
fornecedor varchar (255) #nome do fornecedor do produto
);