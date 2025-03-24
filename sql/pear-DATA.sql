use `pear`;

-- Data for SalesTerritory
INSERT INTO SalesTerritory (Name) VALUES
('North America'),
('Europe'),
('Asia');

-- Data for Country
INSERT INTO Country (Name, Code, SalesTerritory_SalesTerritoryKey) VALUES
('USA', 'US', 1),
('Canada', 'CA', 1),
('UK', 'GB', 2),
('Germany', 'DE', 2),
('Japan', 'JP', 3),
('China', 'CN', 3);

-- Data for City
INSERT INTO City (Name, PostalCode, Country_CountryKey) VALUES
('New York', '10001', 1),
('Los Angeles', '90001', 1),
('Toronto', 'M5A0A1', 2),
('London', 'SW1A0AA', 3),
('Berlin', '10115', 4),
('Tokyo', '100-0001', 5),
('Beijing', '100000', 6);

-- Data for Customer
INSERT INTO Customer (Email, Password, FirstName, LastName, PhoneNumber, Birthday, Address, CreationDate, ModificationTime, Country_CountryKey) VALUES
('john.doe@example.com', 'password123', 'John', 'Doe', '555-1234', '1990-05-15', '123 Main St', '2024-01-01', CURRENT_TIMESTAMP, 1),
('jane.smith@example.com', 'securepass', 'Jane', 'Smith', '555-5678', '1985-10-20', '456 Elm St', '2024-01-01', CURRENT_TIMESTAMP, 2),
('peter.jones@example.com', 'complexpass', 'Peter', 'Jones', '555-9012', '1992-03-10', '789 Oak St', '2024-01-01', CURRENT_TIMESTAMP, 3);

-- Data for Administrator
INSERT INTO Administrator (Name, PhoneNumber, City_CityKey) VALUES
('Alice Johnson', '555-3456', 1),
('Bob Williams', '555-7890', 2);

-- Data for Product
INSERT INTO Product (Code, Name, Price, Status, Category) VALUES
('P1001', 'Smartphone X', 999.99, 'live', 'phone'),
('L2002', 'Laptop Pro', 1499.99, 'live', 'laptop'),
('W3003', 'Smartwatch Z', 299.99, 'out_of_stock', 'watch');

-- Data for Question
INSERT INTO Question (Title, Body, Customer_CustomerKey, Product_ProductKey) VALUES
('Battery Life', 'How long does the battery last?', 1, 1),
('Screen Size', 'What is the screen size of the laptop?', 2, 2);

-- Data for SalesPoint
INSERT INTO SalesPoint (Address, ContactNumber, City_CityKey) VALUES
('10 Downing St', '555-1111', 4),
('20 Unter den Linden', '555-2222', 5);

-- Data for Employee
INSERT INTO Employee (FirstName, LastName, Email, PhoneNumber, SalesPoint_SalesPointKey) VALUES
('Eve Brown', 'Brown', 'eve.brown@example.com', '555-4444', 1),
('Charlie Green', 'Green', 'charlie.green@example.com', '555-5555', 2);

-- Data for Answer
INSERT INTO Answer (Body, Question_QuestionKey, Employee_EmployeeKey) VALUES
('Battery lasts for 10 hours.', 1, 1),
('Screen size is 15 inches.', 2, 2);

-- Data for Order
INSERT INTO `Order` (OrderTime, DeliveryDate, DeliveryCost, OrderStatus, SalesPoint_SalesPointKey, Customer_CustomerKey) VALUES
('2024-01-05 10:00:00', '2024-01-10 10:00:00', 10.00, 'done', 1, 1),
('2024-01-06 12:00:00', '2024-01-11 12:00:00', 15.00, 'pending', 2, 2);

-- Data for OrderDetail
INSERT INTO OrderDetail (Quantity, TransactionPrice, DiscountPercentage, Order_OrderKey, Product_ProductKey) VALUES
(1, 999.99, 0, 1, 1),
(1, 1499.99, 10, 2, 2);




-- Additional Data for Order and OrderDetail (20 entries)
INSERT INTO `Order` (OrderTime, DeliveryDate, DeliveryCost, OrderStatus, SalesPoint_SalesPointKey, Customer_CustomerKey) VALUES
('2024-01-07 14:00:00', '2024-01-12 14:00:00', 12.50, 'waiting', 1, 3),
('2024-01-08 09:00:00', '2024-01-13 09:00:00', 8.00, 'done', 2, 1),
('2024-01-09 18:00:00', '2024-01-14 18:00:00', 11.25, 'pending', 1, 2),
('2024-01-10 11:00:00', '2024-01-15 11:00:00', 9.50, 'done', 2, 3),
('2024-01-11 16:00:00', '2024-01-16 16:00:00', 14.00, 'cancelled', 1, 1),
('2024-01-12 20:00:00', '2024-01-17 20:00:00', 7.75, 'refunded', 2, 2),
('2024-01-13 08:00:00', '2024-01-18 08:00:00', 13.50, 'waiting', 1, 3),
('2024-01-14 13:00:00', '2024-01-19 13:00:00', 10.25, 'done', 2, 1),
('2024-01-15 19:00:00', '2024-01-20 19:00:00', 8.75, 'pending', 1, 2),
('2024-01-16 10:00:00', '2024-01-21 10:00:00', 12.00, 'done', 2, 3),
('2024-01-17 15:00:00', '2024-01-22 15:00:00', 9.25, 'cancelled', 1, 1),
('2024-01-18 21:00:00', '2024-01-23 21:00:00', 11.75, 'refunded', 2, 2),
('2024-01-19 07:00:00', '2024-01-24 07:00:00', 14.50, 'waiting', 1, 3),
('2024-01-20 12:00:00', '2024-01-25 12:00:00', 7.50, 'done', 2, 1),
('2024-01-21 17:00:00', '2024-01-26 17:00:00', 10.75, 'pending', 1, 2),
('2024-01-22 09:00:00', '2024-01-27 09:00:00', 13.00, 'done', 2, 3),
('2024-01-23 14:00:00', '2024-01-28 14:00:00', 8.25, 'cancelled', 1, 1),
('2024-01-24 22:00:00', '2024-01-29 22:00:00', 11.50, 'refunded', 2, 2),
('2024-01-25 06:00:00', '2024-01-30 06:00:00', 9.75, 'waiting', 1, 3),
('2024-01-26 11:00:00', '2024-01-31 11:00:00', 12.25, 'done', 2, 1);

INSERT INTO OrderDetail (Quantity, TransactionPrice, DiscountPercentage, Order_OrderKey, Product_ProductKey) VALUES
(2, 299.99, 5, 3, 3),
(1, 999.99, 0, 4, 1),
(3, 299.99, 10, 5, 3),
(1, 1499.99, 5, 6, 2),
(2, 999.99, 0, 7, 1),
(1, 299.99, 15, 8, 3),
(3, 1499.99, 10, 9, 2),
(1, 999.99, 5, 10, 1),
(2, 299.99, 0, 11, 3),
(1, 1499.99, 20, 12, 2),
(3, 999.99, 10, 13, 1),
(1, 299.99, 5, 14, 3),
(2, 1499.99, 0, 15, 2),
(1, 999.99, 15, 16, 1),
(3, 299.99, 10, 17, 3),
(1, 1499.99, 0, 18, 2),
(2, 999.99, 5, 19, 1),
(1, 299.99, 20, 20, 3),
(3, 1499.99, 10, 21, 2),
(1, 999.99, 0, 22, 1);

-- Additional Data for Customer (10 entries)
INSERT INTO Customer (Email, Password, FirstName, LastName, PhoneNumber, Birthday, Address, CreationDate, ModificationTime, Country_CountryKey) VALUES
('sarah.lee@example.com', 'strongpass', 'Sarah', 'Lee', '555-2345', '1988-07-22', '234 Pine St', '2024-01-02', CURRENT_TIMESTAMP, 4),
('david.chen@example.com', 'password789', 'David', 'Chen', '555-6789', '1995-12-01', '567 Maple Ave', '2024-01-02', CURRENT_TIMESTAMP, 5),
('linda.brown@example.com', 'secure123', 'Linda', 'Brown', '555-0123', '1993-04-18', '890 Oak Ln', '2024-01-03', CURRENT_TIMESTAMP, 6),
('michael.davis@example.com', 'pass1234', 'Michael', 'Davis', '555-3456', '1991-09-05', '345 Cedar Rd', '2024-01-03', CURRENT_TIMESTAMP, 1),
('jennifer.wilson@example.com', 'mypassword', 'Jennifer', 'Wilson', '555-7890', '1987-02-14', '678 Birch St', '2024-01-04', CURRENT_TIMESTAMP, 2),
('robert.garcia@example.com', 'mysecurepass', 'Robert', 'Garcia', '555-2345', '1994-06-30', '901 Pine Ave', '2024-01-04', CURRENT_TIMESTAMP, 3),
('maria.rodriguez@example.com', 'password567', 'Maria', 'Rodriguez', '555-6789', '1989-11-08', '234 Maple Ln', '2024-01-05', CURRENT_TIMESTAMP, 4),
('james.martinez@example.com', 'securepass123', 'James', 'Martinez', '555-0123', '1996-03-25', '567 Oak Rd', '2024-01-05', CURRENT_TIMESTAMP, 5),
('amy.anderson@example.com', 'mypass123', 'Amy', 'Anderson', '555-3456', '1992-08-12', '890 Cedar Ave', '2024-01-06', CURRENT_TIMESTAMP, 6),
('thomas.jackson@example.com', 'securepwd', 'Thomas', 'Jackson', '555-7890', '1986-01-01', '345 Birch Ln', '2024-01-06', CURRENT_TIMESTAMP, 1);

-- Additional Data for SalesPoint (5 entries)
INSERT INTO SalesPoint (Address, ContactNumber, ModificationTime, City_CityKey) VALUES
('789 Cherry Ave', '555-5555', CURRENT_TIMESTAMP, 3),
('456 Walnut St', '555-6666', CURRENT_TIMESTAMP, 5),
('123 Elm St', '555-7777', CURRENT_TIMESTAMP, 1),
('901 Oak Ave', '555-8888', CURRENT_TIMESTAMP, 2),
('345 Pine Ln', '555-9999', CURRENT_TIMESTAMP, 4);

-- Additional Data for Employee (12 entries)
INSERT INTO Employee (FirstName, LastName, Email, PhoneNumber, SalesPoint_SalesPointKey) VALUES
('Grace', 'Lee', 'grace.lee@example.com', '555-1212', 3),
('Henry', 'Kim', 'henry.kim@example.com', '555-1313', 4),
('Isabella', 'Davis', 'isabella.davis@example.com', '555-1414', 5),
('Jack', 'Wilson', 'jack.wilson@example.com', '555-1515', 1),
('Kate', 'Garcia', 'kate.garcia@example.com', '555-1616', 2),
('Liam', 'Rodriguez', 'liam.rodriguez@example.com', '555-1717', 3),
('Mia', 'Martinez', 'mia.martinez@example.com', '555-1818', 4),
('Noah', 'Anderson', 'noah.anderson@example.com', '555-1919', 5),
('Olivia', 'Thomas', 'olivia.thomas@example.com', '555-2020', 1),
('Peter', 'Hall', 'peter.hall@example.com', '555-2121', 2),
('Quinn', 'Clark', 'quinn.clark@example.com', '555-2222', 3),
('Rachel', 'Lewis', 'rachel.lewis@example.com', '555-2323', 4);

-- Additional Data for Product (20 entries)
INSERT INTO Product (Code, Name, Price, Status, Category) VALUES
('P1004', 'Smartphone Y', 1099.99, 'live', 'phone'),
('L2005', 'Laptop Air', 1299.99, 'live', 'laptop'),
('W3006', 'Smartwatch X', 349.99, 'out_of_stock', 'watch'),
('P1007', 'Smartphone Z', 1199.99, 'live', 'phone'),
('L2008', 'Laptop Basic', 999.99, 'live', 'laptop'),
('W3009', 'Smartwatch Pro', 449.99, 'live', 'watch'),
('P1010', 'Smartphone A', 899.99, 'live', 'phone'),
('L2011', 'Laptop Gamer', 1799.99, 'live', 'laptop'),
('W3012', 'Smartwatch Lite', 199.99, 'out_of_stock', 'watch'),
('P1013', 'Smartphone B', 949.99, 'live', 'phone'),
('L2014', 'Laptop Office', 1199.99, 'live', 'laptop'),
('W3015', 'Smartwatch Plus', 399.99, 'live', 'watch'),
('P1016', 'Smartphone C', 1249.99, 'live', 'phone'),
('L2017', 'Laptop Studio', 1599.99, 'live', 'laptop'),
('W3018', 'Smartwatch Active', 249.99, 'out_of_stock', 'watch'),
('P1019', 'Smartphone D', 799.99, 'live', 'phone'),
('L2020', 'Laptop Travel', 1099.99, 'live', 'laptop'),
('W3021', 'Smartwatch Fashion', 299.99, 'live', 'watch'),
('P1022', 'Smartphone E', 1349.99, 'live', 'phone'),
('L2023', 'Laptop Power', 1899.99, 'live', 'laptop');
