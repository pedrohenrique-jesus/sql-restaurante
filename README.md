# SQL Restaurante

## 📌 Descrição
Projeto de banco de dados relacional em MySQL para um sistema de restaurante...

## 🛠️ Tecnologias Utilizadas
- MySQL
- MySQL Workbench

## 🗂️ Estrutura do Projeto
- definicao.sql
- manipulacao.sql
- consultas.sql
- condicional.sql
- agregacao.sql
- multiplas_tabelas.sql
- consultas_avancadas.sql

### 📂 Definição do Banco de Dados

O arquivo `definicao.sql` contém a criação da estrutura do banco de dados do projeto **Restaurante**, incluindo tabelas, chaves primárias e relacionamentos entre as entidades.

#### Tabelas criadas:
- **funcionarios**: armazena informações dos funcionários do restaurante.
- **clientes**: registra os dados dos clientes cadastrados.
- **produtos**: contém os produtos disponíveis para venda.
- **pedidos**: relaciona clientes, funcionários e produtos, registrando vendas realizadas.
- **info_produtos**: armazena informações adicionais dos produtos, como ingredientes e fornecedor.

#### Conceitos aplicados:
- Modelagem de dados relacional
- Chaves primárias e estrangeiras
- Integridade referencial
- Tipos de dados adequados para datas e valores monetários

### 🔄 Manipulação de Dados

O arquivo `manipulacao.sql` é responsável por popular o banco de dados e simular operações reais do dia a dia de um restaurante.

#### Operações realizadas:
- Inserção de dados em todas as tabelas do sistema
- Atualização de cargos e salários de funcionários
- Atualização do status de pedidos com base na data
- Remoção controlada de registros

#### Conceitos aplicados:
- INSERT, UPDATE e DELETE
- Controle de segurança com `sql_safe_updates`
- Simulação de regras de negócio

### 🔍 Consultas Básicas

O arquivo `consultas.sql` contém consultas SQL para extração de informações do banco de dados do restaurante.

#### Exemplos de consultas realizadas:
- Produtos com preço superior a um determinado valor
- Clientes filtrados por ano de nascimento
- Busca de ingredientes por palavra-chave
- Ordenação de produtos por categoria e preço
- Seleção dos produtos mais caros
- Simulação de promoção com limitação de resultados
- Criação de backup de tabela utilizando SELECT

#### Conceitos aplicados:
- SELECT e WHERE
- Funções SQL
- ORDER BY, LIMIT e OFFSET
- LIKE para busca textual

### ⚙️ Consultas Condicionais

O arquivo `condicional.sql` contém consultas que utilizam lógica condicional para filtragem e tratamento de dados.

#### Operações realizadas:
- Filtros utilizando AND, OR, IN e BETWEEN
- Busca textual com LIKE
- Tratamento de valores nulos com IS NULL e IFNULL
- Criação de colunas calculadas utilizando CASE

#### Conceitos aplicados:
- Operadores lógicos
- Controle de valores NULL
- Lógica condicional em consultas SQL

### 📊 Consultas de Agregação

O arquivo `agregacao.sql` contém consultas voltadas para análise de dados e geração de métricas do restaurante.

#### Análises realizadas:
- Quantidade total de pedidos
- Número de clientes únicos
- Média, mínimo e máximo dos preços dos produtos
- Ranking dos produtos mais caros
- Média de preços por categoria
- Quantidade de produtos por fornecedor
- Identificação de clientes com apenas um pedido

#### Conceitos aplicados:
- Funções de agregação (COUNT, AVG, MIN, MAX)
- GROUP BY e HAVING
- Funções de janela (ROW_NUMBER)
