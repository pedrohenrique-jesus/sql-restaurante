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
