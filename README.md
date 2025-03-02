# Desafio de Projeto - Modelo Conceitual de Banco de Dados

## Descrição do Projeto
Este projeto tem como objetivo modelar um banco de dados conceitual para um sistema de e-commerce, considerando regras de negócio que envolvem clientes, formas de pagamento e o processo de entrega de pedidos. A modelagem foi feita com base em boas práticas de normalização de dados, garantindo integridade e eficiência.

## Objetivo
Refinar o modelo conceitual com as seguintes melhorias:
- **Cliente PJ e PF**: Uma conta pode ser do tipo Pessoa Jurídica (PJ) ou Pessoa Física (PF), mas não pode conter ambos os tipos simultaneamente.
- **Pagamento**: Um cliente pode cadastrar mais de uma forma de pagamento.
- **Entrega**: O pedido deve conter status de entrega e código de rastreamento.

## Modelagem Conceitual
A modelagem do banco de dados segue os seguintes conceitos:
- **Cliente**: Contém informações de clientes, podendo ser PJ ou PF.
- **Pedido**: Relaciona-se a um cliente e contém informações sobre a compra.
- **Pagamento**: Permite que um cliente registre múltiplas formas de pagamento.
- **Entrega**: Possui status e código de rastreamento para acompanhamento do pedido.

## Tecnologias Utilizadas
- Banco de dados relacional (MySQL)
- Ferramentas de modelagem (MySQL Workbench)

## Autor
Jessica Estuqui - Desenvolvedora

