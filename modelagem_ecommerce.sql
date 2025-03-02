
-- Criando o banco de dados
CREATE DATABASE IF NOT EXISTS ECommerceDB;
USE ECommerceDB;

-- Criando a tabela de clientes
CREATE TABLE IF NOT EXISTS Client (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Type ENUM('PF', 'PJ') NOT NULL,
    Identification VARCHAR(20) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL
);

-- Criando a tabela de pedidos
CREATE TABLE IF NOT EXISTS `Order` (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    ClientId INT NOT NULL,
    OrderDate DATETIME DEFAULT CURRENT_TIMESTAMP,
    TotalValue DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (ClientId) REFERENCES Client(Id) ON DELETE CASCADE
);

-- Criando a tabela de pagamentos
CREATE TABLE IF NOT EXISTS Payment (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    OrderId INT NOT NULL,
    PaymentType ENUM('Credit Card', 'Debit Card', 'PayPal', 'Bank Transfer', 'Cash') NOT NULL,
    FOREIGN KEY (OrderId) REFERENCES `Order`(Id) ON DELETE CASCADE
);

-- Criando a tabela de entregas
CREATE TABLE IF NOT EXISTS Delivery (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    OrderId INT NOT NULL,
    Status ENUM('Pending', 'Shipped', 'Delivered', 'Canceled') NOT NULL,
    TrackingCode VARCHAR(50) UNIQUE,
    FOREIGN KEY (OrderId) REFERENCES `Order`(Id) ON DELETE CASCADE
);
