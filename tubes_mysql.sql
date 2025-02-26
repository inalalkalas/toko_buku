-- MySQL Script generated by MySQL Workbench
-- Wed 30 Oct 2024 10:09:58 AM WIB
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;

USE `mydb` ;
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Stock Update`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`stock_update` (
  `stock_updateID` INT NOT NULL AUTO_INCREMENT,
  `bookID` INT NOT NULL,
  `stockDate` DATETIME NULL,
  `quantityStock` INT NULL,
  `reasonStock` TEXT NULL,
  PRIMARY KEY (`stock_updateID`),
  INDEX `fk_stock_update_1_idx` (`bookID` ASC) VISIBLE,
  CONSTRAINT `fk_stock_update_1`
    FOREIGN KEY (`bookID`)
    REFERENCES `mydb`.`Books` (`bookID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `mydb`.`Employe`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Employe` (
  `employeID` INT NOT NULL AUTO_INCREMENT,
  `name-employee` INT NULL,
  `contact-employee` VARCHAR(45) NULL UNIQUE,
  `bookID` INT NULL,
  `email-employee` VARCHAR(45) NULL,
  `role_employee` ENUM('admin', 'logistik', 'administrasi') NULL,
  `stock_updateID` INT NULL,
  PRIMARY KEY (`employeID`),
  INDEX `fk_Employe_1_idx` (`bookID` ASC) VISIBLE,
  INDEX `fk_Employe_2_idx` (`stock_updateID` ASC) VISIBLE,
  CONSTRAINT `fk_Employe_1`
    FOREIGN KEY (`bookID`)
    REFERENCES `mydb`.`Books` (`bookID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employe_2`
    FOREIGN KEY (`stock_updateID`)
    REFERENCES `mydb`.`stock_update` (`stock_updateID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order` (
  `orderID` INT NOT NULL AUTO_INCREMENT,
  `OrderDate` DATETIME NULL,
  `TotalOrderAmount` DECIMAL NULL,
  `customerID` INT NULL,
  `transaksiID` INT NULL,
  PRIMARY KEY (`orderID`),
  INDEX `fk_Order_Customer1_idx` (`customerID` ASC) VISIBLE,
  INDEX `fk_Order_Sales Transaksi1_idx` (`transaksiID` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`Customer` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Sales Transaksi1`
    FOREIGN KEY (`transaksiID`)
    REFERENCES `mydb`.`Sales Transaksi` (`transaksiID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Sales Transaksi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Sales Transaksi` (
  `transaksiID` INT NOT NULL AUTO_INCREMENT,
  `transaksiDate` DATETIME NULL,
  `totalAmount` DECIMAL NULL,
  `payment-methode` ENUM('cash', 'transfer bank', 'virtual bank', 'e-wallet') NULL,
  `orderID` INT NULL,
  `employeID` INT NULL,
  PRIMARY KEY (`transaksiID`),
  INDEX `fk_Sales Transaksi_Employe1_idx` (`employeID` ASC) VISIBLE,
  INDEX `fk_Sales Transaksi_1_idx` (`orderID` ASC) VISIBLE,
  CONSTRAINT `fk_Sales Transaksi_Employe1`
    FOREIGN KEY (`employeID`)
    REFERENCES `mydb`.`Employe` (`employeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sales Transaksi_1`
    FOREIGN KEY (`orderID`)
    REFERENCES `mydb`.`Order` (`orderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Books`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Books` (
  `bookID` INT NOT NULL AUTO_INCREMENT,
  `title-book` VARCHAR(45) NULL,
  `authors-book` VARCHAR(45) NULL,
  `genre-book` ENUM('horor', 'fantasy', 'history', 'technology', 'biology', 'animal', '...') NOT NULL,
  `stock-book` INT NULL,
  `price` DECIMAL NULL,
  `isbn` VARCHAR(45) NULL,
  `publisher` VARCHAR(45) NULL,
  `sinopsis-book` LONGTEXT NULL,
  `transaksiID` INT NULL,
  `customerID` INT NULL,
  PRIMARY KEY (`bookID`),
  INDEX `fk_Books_1_idx` (`customerID` ASC) VISIBLE,
  INDEX `fk_Books_2_idx` (`transaksiID` ASC) VISIBLE,
  CONSTRAINT `fk_Books_1`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`Customer` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Books_2`
    FOREIGN KEY (`transaksiID`)
    REFERENCES `mydb`.`Sales Transaksi` (`transaksiID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Rekomendasi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Rekomendasi` (
  `rekomendasiID` INT NOT NULL AUTO_INCREMENT,
  `bookID` INT NULL,
  `title-book` VARCHAR(45) NULL,
  `authors-book` VARCHAR(45) NULL,
  PRIMARY KEY (`rekomendasiID`),
  INDEX `fk_Rekomendasi_1_idx` (`bookID` ASC) VISIBLE,
  CONSTRAINT `fk_Rekomendasi_1`
    FOREIGN KEY (`bookID`)
    REFERENCES `mydb`.`Books` (`bookID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Customer` (
  `customerID` INT NOT NULL AUTO_INCREMENT,
  `username-customer` INT NOT NULL, -- Adjusted to match foreign key requirement
  `contact-customer` VARCHAR(45) NULL,
  `email-customer` VARCHAR(45) NULL UNIQUE,
  `address-costumer` INT NULL,
  `rekomendasiID` INT NULL,
  PRIMARY KEY (`customerID`),
  UNIQUE INDEX `email-customer_UNIQUE` (`email-customer` ASC),
  CONSTRAINT `fk_Customer_1`
    FOREIGN KEY (`rekomendasiID`)
    REFERENCES `mydb`.`Rekomendasi` (`rekomendasiID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`Shipment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Shipment` (
  `shipmentID` INT NOT NULL AUTO_INCREMENT,
  `shipment-date` DATETIME NULL,
  `delivery-method` ENUM('pick up', 'delivery') NULL,
  `shipment-addressID` INT NULL,
  `status-shipment` ENUM('shipped', 'pending', 'delivered', 'canceled') NULL, -- Updated ENUM values
  `trackingNumber-shipment` VARCHAR(45) NULL UNIQUE,
  `orderID` INT NULL,
  PRIMARY KEY (`shipmentID`),
  INDEX `fk_Shipment_Order1_idx` (`orderID` ASC),
  CONSTRAINT `fk_Shipment_Order1`
    FOREIGN KEY (`orderID`)
    REFERENCES `mydb`.`Order` (`orderID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`Address-Costumer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Address-Costumer` (
  `address-costumer` INT NOT NULL AUTO_INCREMENT,
  `state-address` VARCHAR(45) NULL,
  `city-address` VARCHAR(45) NULL,
  `postal-code` VARCHAR(45) NULL,
  `country-address` ENUM('indonesia', 'japan', 'singapore', 'malaysia', 'china', 'philipine', 'australia', '...') NULL,
  `customerID` INT NULL,
  PRIMARY KEY (`address-costumer`),
  INDEX `fk_Address-Costumer_Customer2_idx` (`customerID` ASC) VISIBLE,
  CONSTRAINT `fk_Address-Costumer_Customer2`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`Customer` (`customerID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Name-Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Name-Customer` (
  `username-customerID` INT NOT NULL AUTO_INCREMENT,  
  `first-name-customer` VARCHAR(45) NULL,
  `last-name-customer` VARCHAR(45) NULL,
  `customerID` INT NULL,
  PRIMARY KEY (`username-customerID`),
  CONSTRAINT `fk_Name-Customer_Customer2`
    FOREIGN KEY (`customerID`)
    REFERENCES `mydb`.`Customer` (`customerID`) -- Corrected the foreign key to `customerID`
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
-- -----------------------------------------------------
-- Table `mydb`.`Name-Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Name-Employee` (
  `name-employeeID` INT NOT NULL AUTO_INCREMENT,
  `first-name-employee` VARCHAR(45) NULL,
  `last-name-customer` VARCHAR(45) NULL,
  `username-employee` VARCHAR(45) NULL,
  `employeID` INT NOT NULL,
  PRIMARY KEY (`name-employeeID`),
  INDEX `fk_Name-Employee_Employe1_idx` (`employeID` ASC) VISIBLE,
  CONSTRAINT `fk_Name-Employee_Employe1`
    FOREIGN KEY (`employeID`)
    REFERENCES `mydb`.`Employe` (`employeID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Shipment-Address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Shipment-Address` (
  `shipment-addressID` INT NOT NULL AUTO_INCREMENT,
  `shipment-address-city` VARCHAR(45) NULL,
  `shipment-address-country` VARCHAR(45) NULL,
  `shipment-address-state` VARCHAR(45) NULL,
  `shipment-address-postal-code` VARCHAR(45) NULL,
  `shipmentID` INT NULL,
  PRIMARY KEY (`shipment-addressID`),
  INDEX `fk_Shipment-Address_Shipment1_idx` (`shipmentID` ASC) VISIBLE,
  CONSTRAINT `fk_Shipment-Address_Shipment1`
    FOREIGN KEY (`shipmentID`)
    REFERENCES `mydb`.`Shipment` (`shipmentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `mydb`.`sales_trend_last_week` (
    `Tanggal` DATE NOT NULL,
    `Total Transaksi` INT NOT NULL,
    `Total Penjualan` DECIMAL(10,2) NOT NULL,
    `Rata-rata Penjualan` DECIMAL(10,2) NOT NULL,
    `Pertumbuhan (%)` DECIMAL(10,2) NULL,
    PRIMARY KEY (`Tanggal`)
);

-- query 6 sales_trend_last_Year
CREATE TABLE IF NOT EXISTS `mydb`.`sales_trend_last_year` (
    `Bulan` DATE NOT NULL,
    `Total Transaksi` INT NOT NULL,
    `Total Penjualan` DECIMAL(10,2) NOT NULL,
    `Rata-rata Penjualan` DECIMAL(10,2) NOT NULL,
    `Pertumbuhan (%)` DECIMAL(10,2) NULL,
    PRIMARY KEY (`Bulan`)
);

-- Create table for customer book purchases
CREATE TABLE IF NOT EXISTS `mydb`.`customer_book_purchases` (
    `purchase_id` INT AUTO_INCREMENT PRIMARY KEY,
    `customerID` INT,
    `customer_name` VARCHAR(100),
    `bookID` INT,
    `book_title` VARCHAR(100),
    `genre` VARCHAR(45),
    `price` DECIMAL(10,2),
    `order_date` DATETIME,
    `payment_method` VARCHAR(45)
);

-- Insert sample data for customer book purchases
INSERT INTO `mydb`.`customer_book_purchases` 
(`customerID`, `customer_name`, `bookID`, `book_title`, `genre`, `price`, `order_date`, `payment_method`)
VALUES 
(1, 'John C', 1, 'The Magic Portal', 'fantasy', 29.99, '2023-01-01 10:00:00', 'cash'),
(2, 'John Smith', 5, 'Biology Basics', 'biology', 45.99, '2023-01-02 11:30:00', 'transfer bank'),
(3, 'Sarah Davis', 2, 'Dark Shadows', 'horor', 19.99, '2023-01-03 14:15:00', 'e-wallet'),
(4, 'Emily Stomer', 10, 'Tech Revolution', 'technology', 59.99, '2023-01-04 16:45:00', 'virtual bank'),
(5, 'Taylor Custom', 3, 'Ancient Times', 'history', 34.99, '2023-01-05 09:20:00', 'cash'),
(6, 'Fist Cuomer', 15, 'World War Chronicles', 'history', 39.99, '2023-01-06 13:10:00', 'e-wallet'),
(7, 'William Ctomer', 7, 'Dragon Quest', 'fantasy', 24.99, '2023-01-07 15:30:00', 'transfer bank'),
(8, 'Wlan Tomer', 20, 'Haunted House', 'horor', 29.99, '2023-01-08 10:45:00', 'cash'),
(9, 'Fir Tom', 12, 'Wildlife Adventures', 'animal', 49.99, '2023-01-09 11:20:00', 'virtual bank'),
(10, 'Olive Oil', 8, 'Ghost Stories', 'horor', 22.99, '2023-01-10 14:40:00', 'e-wallet'),
(11, 'Wiliam Taylor', 16, 'AI Future', 'technology', 69.99, '2023-01-11 16:15:00', 'transfer bank'),
(12, 'Liam Black', 4, 'Digital Age', 'technology', 54.99, '2023-01-12 09:30:00', 'cash'),
(13, 'Tom Custom', 19, 'Mystic Realms', 'fantasy', 31.99, '2023-01-13 13:45:00', 'virtual bank'),
(14, 'Bean Hill', 11, 'Cell Structure', 'biology', 44.99, '2023-01-14 15:20:00', 'e-wallet'),
(15, 'Thomas Ctomer', 6, 'Pet Care Guide', 'animal', 27.99, '2023-01-15 10:10:00', 'transfer bank'),
(16, 'Lewis Stomer', 14, 'Nightmare Alley', 'horor', 25.99, '2023-01-16 11:40:00', 'cash'),
(17, 'Aca Custom', 17, 'Marine Life', 'biology', 37.99, '2023-01-17 14:25:00', 'virtual bank'),
(18, 'Ava Cuomer', 9, 'Medieval Times', 'history', 42.99, '2023-01-18 16:50:00', 'e-wallet'),
(19, 'Scot Ctomer', 13, 'Enchanted Forest', 'fantasy', 28.99, '2023-01-19 09:15:00', 'transfer bank'),
(20, 'Ethan stomer', 18, 'Zoo Adventures', 'animal', 33.99, '2023-01-20 13:30:00', 'cash'),
(21, 'Mia Custom', 21, 'Renaissance Art', 'history', 46.99, '2023-01-21 15:45:00', 'virtual bank'),
(22, 'Allen Cuomerso', 22, 'Quantum Computing', 'technology', 64.99, '2023-01-22 10:20:00', 'e-wallet'),
(23, 'Clark Ctomer', 23, 'Genetics 101', 'biology', 39.99, '2023-01-23 11:50:00', 'transfer bank'),
(24, 'Young Stomer', 24, 'Safari Guide', 'animal', 29.99, '2023-01-24 14:15:00', 'cash'),
(25, 'Allan Wake', 25, 'Magic Kingdom', 'fantasy', 34.99, '2023-01-25 16:40:00', 'virtual bank');

-- Query to show customer purchase history with details
SELECT 
    cp.customerID,
    cp.customer_name,
    COUNT(DISTINCT cp.bookID) as total_books_bought,
    GROUP_CONCAT(DISTINCT cp.genre) as genres_bought,
    SUM(cp.price) as total_spent,
    GROUP_CONCAT(DISTINCT cp.payment_method) as payment_methods_used
FROM 
    `mydb`.`customer_book_purchases` cp
GROUP BY 
    cp.customerID, cp.customer_name
ORDER BY 
    total_spent DESC;

-- Query to show popular books and genres
SELECT 
    cp.genre,
    COUNT(*) as total_purchases,
    ROUND(AVG(cp.price), 2) as average_price,
    GROUP_CONCAT(DISTINCT cp.book_title) as books_in_genre
FROM 
    `mydb`.`customer_book_purchases` cp
GROUP BY 
    cp.genre
ORDER BY 
    total_purchases DESC;

INSERT INTO `Customer` (`username-customer`, `contact-customer`, `email-customer`, `address-costumer`, `rekomendasiID`)
VALUES 
(101, '33243456', 'cusmer1@example.com', 1, 2),
(102, '23456890', 'ustr1@example.com', 2, 3),
(103, '12347890', '2123stom1@example.com', 3, 5),
(104, '14567890', 'tm3211@example.com', 4, 1),
(105, '34214567', 'mer121@example.com', 5, 1),
(106, '43456890', '32strsfa1@example.com', 6, 1),
(107, '22347890', '1ctom1wqw@example.com', 7, 2),
(108, '44567890', '21ctm1sa@example.com', 8, 3),
(109, '38874567', 'eqwctomerdwag1@example.com', 9, 6),
(110, '23450090', 'vrscstr1dwa@example.com', 10, 6),
(111, '32145890', 'e3q2o231m1@example.com', 11, 8),
(112, '31267890', '31um144@example.com', 12, 10),
(113, '34123567', 'gtrustomer31241@example.com', 13, 22),
(114, '24532890', 'htjustr1fesxf@example.com', 14, 23),
(115, '13234790', 'njmutomrewg1@example.com', 15, 16),
(116, '14568990', 'klhcutm1grwer@example.com', 16, 5),
(117, '78734567', 'loicstomerqqe1@example.com', 17, 6),
(118, '79456890', 'ipustr1ee3q@example.com', 18, 6),
(119, '96347890', 'uyrstom879781@example.com', 19, 6),
(120, '87567890', 'tuiftcutm1htf@example.com', 20, 7),
(121, '30004567', 'fewecomefesdr1@example.com', 21, 7),
(122, '83456890', 'e3qwcustrads1@example.com', 22, 3),
(123, '72347890', 'ewqfctodasm1@example.com', 23, 8),
(124, '89567890', 'rtwcutfersm1@edawdxample.com', 24, 16),
(125, '34567000', 'fewjwcuomdwweer1@example.com', 25, 17);

-- Data Insertion for the `Name-Customer` table
INSERT INTO `Name-Customer` (`customerID`, `first-name-customer`, `last-name-customer`, `username-customerID`)
VALUES 
(1, 'John', 'C', 101),
(2, 'John', 'Smith', 102),
(3, 'Sarah', 'Davis', 103),
(4, 'Emily', 'Stomer', 104),
(5, 'Taylor', 'Custom', 105),
(6, 'Fist', 'Cuomer', 106),
(7, 'William', 'Ctomer', 107),
(8, 'Wlan', 'Tomer', 108),
(9, 'Fir', 'Tom', 109),
(10, 'Olive', 'Oil', 110),
(11, 'Wiliam', 'Taylor', 111),
(12, 'Liam', 'Black', 112),
(13, 'Tom', 'Custom', 113),
(14, 'Bean', 'Hill', 114),
(15, 'Thomas', 'Ctomer', 115),
(16, 'Lewis', 'Stomer', 116),
(17, 'Aca', 'Custom', 117),
(18, 'Ava', 'Cuomer', 118),
(19, 'Scot', 'Ctomer', 119),
(20, 'Ethan', 'stomer', 120),
(21, 'Mia', 'Custom', 121),
(22, 'Allen', 'Cuomerso', 122),
(23, 'Clark', 'Ctomer', 123),
(24, 'Young', 'Stomer', 124),
(25, 'Allan', 'Wake', 125);

-- Data Insertion for the `Shipment` table
INSERT INTO `Shipment` (`shipmentID`, `shipment-date`, `delivery-method`, `shipment-addressID`, `status-shipment`, `trackingNumber-shipment`, `orderID`)
VALUES 
(1, NOW(), 'delivery', 1, 'shipped', 'TRACK123', 1),
(2, NOW(), 'delivery', 2, 'pending', 'TRACK124', 2),
(3, NOW(), 'pick up', 3, 'delivered', 'TRACK125', 3),
(4, NOW(), 'delivery', 4, 'canceled', 'TRACK126', 4),
(5, NOW(), 'delivery', 5, 'shipped', 'TRACK127', 5),
(6, NOW(), 'delivery', 6, 'pending', 'TRACK128', 6),
(7, NOW(), 'pick up', 7, 'delivered', 'TRACK129', 7),
(8, NOW(), 'delivery', 8, 'canceled', 'TRACK130', 8),
(9, NOW(), 'delivery', 9, 'shipped', 'TRACK131', 9),
(10, NOW(), 'delivery', 10, 'pending', 'TRACK132', 10),
(11, NOW(), 'pick up', 11, 'delivered', 'TRACK133', 11),
(12, NOW(), 'delivery', 12, 'canceled', 'TRACK134', 12),
(13, NOW(), 'delivery', 13, 'shipped', 'TRACK135', 13),
(14, NOW(), 'delivery', 14, 'pending', 'TRACK136', 14),
(15, '2023-01-15 10:00:00', 'pick up', 15, 'delivered', 'TRACK137', 15),
(16, '2023-01-20 12:30:00', 'delivery', 16, 'canceled', 'TRACK138', 16),
(17, '2023-01-25 15:45:00', 'delivery', 17, 'shipped', 'TRACK139', 17),
(18, '2023-02-10 09:15:00', 'delivery', 18, 'pending', 'TRACK140', 18),
(19, '2023-02-18 16:50:00', 'pick up', 19, 'delivered', 'TRACK141', 19),
(20, '2023-03-05 11:20:00', 'delivery', 20, 'canceled', 'TRACK142', 20),
(21, '2023-03-22 14:35:00', 'delivery', 21, 'shipped', 'TRACK143', 21),
(22, '2023-04-10 10:40:00', 'delivery', 22, 'pending', 'TRACK144', 22),
(23, '2023-04-18 13:00:00', 'pick up', 23, 'delivered', 'TRACK145', 23),
(24, '2023-05-02 09:50:00', 'delivery', 24, 'canceled', 'TRACK146', 24),
(25, '2023-05-20 15:30:00', 'delivery', 25, 'shipped', 'TRACK147', 25);

-- Insert data into Address-Costumer table
INSERT INTO `Address-Costumer` (`address-costumer`, `state-address`, `city-address`, `postal-code`, `country-address`, `customerID`)
VALUES 
(1, 'State A', 'City A', '12345', 'indonesia', 1),
(2, 'State B', 'City B', '23456', 'japan', 2),
(3, 'State C', 'City C', '34567', 'singapore', 3),
(4, 'State D', 'City D', '45678', 'malaysia', 4),
(5, 'State E', 'City E', '56789', 'china', 5),
(6, 'State F', 'City F', '67890', 'philipine', 6),
(7, 'State G', 'City G', '78901', 'australia', 7),
(8, 'State H', 'City H', '89012', 'indonesia', 8),
(9, 'State I', 'City I', '90123', 'japan', 9),
(10, 'State J', 'City J', '01234', 'singapore', 10),
(11, 'State K', 'City K', '12345', 'malaysia', 11),
(12, 'State L', 'City L', '23456', 'china', 12),
(13, 'State M', 'City M', '34567', 'philipine', 13),
(14, 'State N', 'City N', '45678', 'australia', 14),
(15, 'State O', 'City O', '56789', 'indonesia', 15),
(16, 'State P', 'City P', '67890', 'japan', 16),
(17, 'State Q', 'City Q', '78901', 'singapore', 17),
(18, 'State R', 'City R', '89012', 'malaysia', 18),
(19, 'State S', 'City S', '90123', 'china', 19),
(20, 'State T', 'City T', '01234', 'philipine', 20),
(21, 'State U', 'City U', '12345', 'australia', 21),
(22, 'State V', 'City V', '23456', 'indonesia', 22),
(23, 'State W', 'City W', '34567', 'japan', 23),
(24, 'State X', 'City X', '45678', 'singapore', 24),
(25, 'State Y', 'City Y', '56789', 'malaysia', 25);

-- Insert data into Rekomendasi table (no foreign key dependency)
INSERT INTO `Rekomendasi` (`rekomendasiID`, `bookID`, `title-book`, `authors-book`)
VALUES 
(1, 1, 'The Magic Portal', 'Author 1'),
(2, 2, 'Dark Shadows', 'Author 2'),
(3, 3, 'Ancient Times', 'Author 3'),
(4, 4, 'Digital Age', 'Author 4'),
(5, 5, 'Biology Basics', 'Author 5'),
(6, 6, 'Pet Care Guide', 'Author 6'),
(7, 7, 'Dragon Quest', 'Author 7'),
(8, 8, 'Ghost Stories', 'Author 8'),
(9, 9, 'Medieval Times', 'Author 9'),
(10, 10, 'Tech Revolution', 'Author 10'),
(11, 11, 'Cell Structure', 'Author 11'),
(12, 12, 'Wildlife Adventures', 'Author 12'),
(13, 13, 'Enchanted Forest', 'Author 13'),
(14, 14, 'Nightmare Alley', 'Author 14'),
(15, 15, 'World War Chronicles', 'Author 15'),
(16, 16, 'AI Future', 'Author 16'),
(17, 17, 'Marine Life', 'Author 17'),
(18, 18, 'Zoo Adventures', 'Author 18'),
(19, 19, 'Mystic Realms', 'Author 19'),
(20, 20, 'Haunted House', 'Author 20'),
(21, 21, 'Renaissance Art', 'Author 21'),
(22, 22, 'Quantum Computing', 'Author 22'),
(23, 23, 'Genetics 101', 'Author 23'),
(24, 24, 'Safari Guide', 'Author 24'),
(25, 25, 'Magic Kingdom', 'Author 25');
-- Insert data into Books table
INSERT INTO `Books` (`bookID`, `title-book`, `authors-book`, `genre-book`, `stock-book`, `price`, `isbn`, `publisher`, `sinopsis-book`, `transaksiID`, `customerID`)
VALUES 
(1, 'The Magic Portal', 'Author 1', 'fantasy', 30, 29.99 , '1234567890', 'Publisher A', 'A thrilling adventure.', 1, 1),
(2, 'Dark Shadows', 'Author 2', 'horor', 30, 19.99 , '2345678901', 'Publisher B', 'A chilling tale.', 2, 2),
(3, 'Ancient Times', 'Author 3', 'history', 30, 34.99 , '3456789012', 'Publisher C', 'A historical account.', 3, 3),
(4, 'Digital Age', 'Author 4', 'technology', 30, 54.99 , '4567890123', 'Publisher D', 'A tech revolution.', 4, 4),
(5, 'Biology Basics', 'Author 5', 'biology', 30, 45.99 , '5678901234', 'Publisher E', 'An introduction to biology.', 5, 5),
(6, 'Pet Care Guide', 'Author 6', 'animal', 30, 27.99 , '6789012345', 'Publisher F', 'A guide to pet care.', 6, 6),
(7, 'Dragon Quest', 'Author 7', 'fantasy', 30, 24.99 , '7890123456', 'Publisher G', 'A quest for dragons.', 7, 7),
(8, 'Ghost Stories', 'Author 8', 'horor', 30, 22.99 , '8901234567', 'Publisher H', 'A collection of ghost stories.', 8, 8),
(9, 'Medieval Times', 'Author 9', 'history', 30, 42.99 , '9012345678', 'Publisher I', 'A journey through history.', 9, 9),
(10, 'Tech Revolution', 'Author 10', 'technology', 30, 59.99 , '0123456789', 'Publisher J', 'A revolution in technology.', 10, 10),
(11, 'Cell Structure', 'Author 11', 'biology', 30, 44.99 , '1234567890', 'Publisher K', 'An exploration of cells.', 11, 11),
(12, 'Wildlife Adventures', 'Author 12', 'animal', 30, 49.99 , '2345678901', 'Publisher L', 'Adventures in the wild.', 12, 12),
(13, 'Enchanted Forest', 'Author 13', 'fantasy', 30, 28.99 , '3456789012', 'Publisher M', 'A magical forest.', 13, 13),
(14, 'Nightmare Alley', 'Author 14', 'horor', 30, 25.99 , '4567890123', 'Publisher N', 'A terrifying alley.', 14, 14),
(15, 'World War Chronicles', 'Author 15', 'history', 30, 39.99 , '5678901234', 'Publisher O', 'Chronicles of war.', 15, 15),
(16, 'AI Future', 'Author 16', 'technology', 30, 69.99 , '6789012345', 'Publisher P', 'The future of AI.', 16, 16),
(17, 'Marine Life', 'Author 17', 'biology', 30, 37.99 , '7890123456', 'Publisher Q', 'Life under the sea.', 17, 17),
(18, 'Zoo Adventures', 'Author 18', 'animal', 30, 33.99 , '8901234567', 'Publisher R', 'Adventures at the zoo.', 18, 18),
(19, 'Mystic Realms', 'Author 19', 'fantasy', 30, 31.99 , '9012345678', 'Publisher S', 'Realms of magic.', 19, 19),
(20, 'Haunted House', 'Author 20', 'horor', 30, 29.99 , '0123456789', 'Publisher T', 'A haunted house.', 20, 20),
(21, 'Renaissance Art', 'Author 21', 'history', 30, 46.99 , '1234567890', 'Publisher U', 'Art of the Renaissance.', 21, 21),
(22, 'Quantum Computing', 'Author 22', 'technology', 30, 64.99 , '2345678901', 'Publisher V', 'The world of quantum.', 22, 22),
(23, 'Genetics 101', 'Author 23', 'biology', 30, 39.99 , '3456789012', 'Publisher W', 'An introduction to genetics.', 23, 23),
(24, 'Safari Guide', 'Author 24', 'animal', 30, 29.99 , '45678932198', 'Publisher X', 'A guide to safaris.', 24, 24),
(25, 'Magic Kingdom', 'Author 25', 'fantasy', 30, 34.99 , '5678901234', 'Publisher Y', 'A kingdom of magic.', 25, 25);

-- Insert data into Employe table
INSERT INTO `Employe` (`employeID`, `name-employee`, `contact-employee`, `bookID`, `email-employee`, `role_employee`, `stock_updateID`)
VALUES 
(1, 201, '987-654-3210', 1, 'employe1@example.com', 'admin', 1),
(2, 202, '876-543-2109', 2, 'employe1@example.com', 'logistik', 2),
(3, 203, '765-432-1098', 3, 'employe1@example.com', 'administrasi', 3),
(4, 204, '654-321-0987', 4, 'employe1@example.com', 'admin', 4),
(5, 205, '543-210-9876', 5, 'employe1@example.com', 'logistik', 5);

-- Insert data into stock_update table
INSERT INTO `mydb`.`stock_update` (`stock_updateID`, `bookID`, `stockDate`, `quantityStock`, `reasonStock`)
VALUES 
(1, 1, NOW(), 9, 'Initial Stock');

-- Insert data into Sales Transaksi table
INSERT INTO `Sales Transaksi` (`transaksiID`, `transaksiDate`, `totalAmount`, `payment-methode`, `orderID`, `employeID`)
VALUES 
(1, NOW(), 29.99, 'cash', 1, 1),
(2, NOW(), 19.99, 'transfer bank', 2, 1),
(3, NOW(), 34.99, 'e-wallet', 3, 1),
(4, NOW(), 54.99, 'virtual bank', 4, 2),
(5, NOW(), 45.99, 'cash', 5, 3),
(6, NOW(), 27.99, 'e-wallet', 6, 5),
(7, NOW(), 24.99, 'transfer bank', 7, 5),
(8, NOW(), 22.99, 'cash', 8, 2),
(9, NOW(), 42.99, 'virtual bank', 9, 5),
(10, NOW(), 59.99, 'e-wallet', 10, 2),
(11, NOW(), 44.99, 'transfer bank', 11, 4),
(12, NOW(), 49.99, 'cash', 12, 5),
(13, NOW(), 28.99, 'virtual bank', 13, 4),
(14, NOW(), 25.99, 'e-wallet', 14, 5),
(15, '2023-01-15 10:00:00', 39.99, 'transfer bank', 15, 3),
(16, '2023-01-20 12:30:00', 69.99, 'cash', 16, 1),
(17, '2023-01-25 15:45:00', 37.99, 'virtual bank', 17, 1),
(18, '2023-02-10 09:15:00', 33.99, 'e-wallet', 18, 1),
(19, '2023-02-18 16:50:00', 31.99, 'transfer bank', 19, 1),
(20, '2023-03-05 11:20:00', 29.99, 'cash', 20, 1),
(21, '2023-03-22 14:35:00', 46.99, 'virtual bank', 21, 1),
(22, '2023-04-10 10:40:00', 64.99, 'e-wallet', 22, 1),
(23, '2023-04-18 13:00:00', 39.99, 'transfer bank', 23, 1),
(24, '2023-05-02 09:50:00', 29.99, 'cash', 24, 1),
(25, '2023-05-20 15:30:00', 34.99, 'virtual bank', 25, 1);

-- Insert data into Order table
INSERT INTO `Order` (`orderID`, `OrderDate`, `TotalOrderAmount`, `customerID`, `transaksiID`)
VALUES 
(1, NOW(), 29.99, 1, 1),
(2, NOW(), 19.99, 2, 2),
(3, NOW(), 34.99, 3, 3),
(4, NOW(), 54.99, 4, 4),
(5, NOW(), 45.99, 5, 5),
(6, NOW(), 27.99, 6, 6),
(7, NOW(), 24.99, 7, 7),
(8, NOW(), 22.99, 8, 8),
(9, NOW(), 42.99, 9, 9),
(10, NOW(), 59.99, 10, 10),
(11, NOW(), 44.99, 11, 11),
(12, NOW(), 49.99, 12, 12),
(13, NOW(), 28.99, 13, 13),
(14, NOW(), 25.99, 14, 14),
(15,'2023-01-15 10:00:00', 39.99, 15, 15),
(16,'2023-01-20 12:30:00', 69.99, 16, 16),
(17,'2023-01-25 15:45:00', 37.99, 17, 17),
(18,'2023-02-10 09:15:00', 33.99, 18, 18),
(19,'2023-02-18 16:50:00', 31.99, 19, 19),
(20,'2023-03-05 11:20:00', 29.99, 20, 20),
(21,'2023-03-22 14:35:00', 46.99, 21, 21),
(22,'2023-04-10 10:40:00', 64.99, 22, 22),
(23,'2023-04-18 13:00:00', 39.99, 23, 23),
(24,'2023-05-02 09:50:00', 29.99, 24, 24),
(25,'2023-05-20 15:30:00', 34.99, 25, 25);

-- Insert data into Shipment-Address table
INSERT INTO `Shipment-Address` (`shipment-addressID`, `shipment-address-city`, `shipment-address-country`, `shipment-address-state`, `shipment-address-postal-code`, `shipmentID`)
VALUES 
(1, 'City A', 'indonesia', 'State A', '12345', 1),
(2, 'City B', 'japan', 'State B', '23456', 2),
(3, 'City C', 'singapore', 'State C', '34567', 3),
(4, 'City D', 'malaysia', 'State D', '45678', 4),
(5, 'City E', 'china', 'State E', '56789', 5),
(6, 'City F', 'philipine', 'State F', '67890', 6),
(7, 'City G', 'australia', 'State G', '78901', 7),
(8, 'City H', 'indonesia', 'State H', '89012', 8),
(9, 'City I', 'japan', 'State I', '90123', 9),
(10, 'City J', 'singapore', 'State J', '01234', 10),
(11, 'City K', 'malaysia', 'State K', '12345', 11),
(12, 'City L', 'china', 'State L', '23456', 12),
(13, 'City M', 'philipine', 'State M', '34567', 13),
(14, 'City N', 'australia', 'State N', '45678', 14),
(15, 'City O', 'indonesia', 'State O', '56789', 15),
(16, 'City P', 'japan', 'State P', '67890', 16),
(17, 'City Q', 'singapore', 'State Q', '78901', 17),
(18, 'City R', 'malaysia', 'State R', '89012', 18),
(19, 'City S', 'china', 'State S', '90123', 19),
(20, 'City T', 'philipine', 'State T', '01234', 20),
(21, 'City U', 'australia', 'State U', '12345', 21),
(22, 'City V', 'indonesia', 'State V', '23456', 22),
(23, 'City W', 'japan', 'State W', '34567', 23),
(24, 'City X', 'singapore', 'State X', '45678', 24),
(25, 'City Y', 'malaysia', 'State Y', '56789', 25);

-- Insert data into Name-Employee table
INSERT INTO `Name-Employee` (`name-employeeID`, `first-name-employee`, `last-name-customer`, `username-employee`, `employeID`)
VALUES 
(1, 'John', 'Doe', 'johndoe', 1),
(2, 'Jane', 'Smith', 'janesmith', 2),
(3, 'Alice', 'Johnson', 'alicejohnson', 3),
(4, 'Bob', 'Brown', 'bobbrown', 4),
(5, 'Charlie', 'Davis', 'charliedavis', 5);

-- Query to show payment method preferences
CREATE TABLE IF NOT EXISTS `mydb`.`payment_method_preferences` AS
SELECT 
    st.`payment-methode` AS `Payment Method`,
    ROUND(SUM(st.`totalAmount`), 2) as total_revenue,
    ROUND(AVG(st.`totalAmount`), 2) as average_transaction_value
FROM 
    `Sales Transaksi` st
INNER JOIN `Order` o ON st.`transaksiID` = o.`transaksiID`
WHERE
    o.`OrderDate` >= NOW() - INTERVAL 30 DAY
GROUP BY 
    st.`payment-methode`
ORDER BY 
    total_revenue DESC;

-- Query 3: Total transactions and total amount managed by employees in a specific role
CREATE TABLE IF NOT EXISTS `mydb`.`employee_transaction` AS
SELECT 
    e.`employeID`,
    CONCAT(ne.`first-name-employee`, ' ', ne.`last-name-customer`) AS `Employee Name`,
    COUNT(st.`transaksiID`) AS `Total Transactions`,
    SUM(st.`totalAmount`) AS `Total Amount`
FROM `Employe` e
INNER JOIN `Name-Employee` ne ON e.`employeID` = ne.`employeID`
INNER JOIN `Sales Transaksi` st ON e.`employeID` = st.`employeID`
GROUP BY e.`employeID`, ne.`first-name-employee`, ne.`last-name-customer`
ORDER BY `Total Amount` DESC;


-- Query 4: Total shipments for each city with a 'pending' status
CREATE TABLE IF NOT EXISTS `mydb`.`shipment_transaction` AS
SELECT 
    sa.`shipment-address-city` AS `City`,
    COUNT(s.`shipmentID`) AS `Total Shipments`
FROM `Shipment` s
INNER JOIN `Shipment-Address` sa ON s.`shipmentID` = sa.`shipmentID`
WHERE s.`status-shipment` = 'pending'
GROUP BY sa.`shipment-address-city`
ORDER BY `Total Shipments` DESC;

-- Query 5: Recommended books for a specific genre with stock > 0
CREATE TABLE IF NOT EXISTS `mydb`.`rekomendasi_customer` AS
SELECT 
    b.`genre-book`,
    r.`title-book` AS `Recommended Book`,
    r.`authors-book`
FROM `Rekomendasi` r
INNER JOIN `Books` b ON r.`bookID` = b.`bookID`
WHERE b.`genre-book` = 'fantasy' AND b.`stock-book` > 0
GROUP BY r.`title-book`, r.`authors-book`
ORDER BY r.`title-book` ASC;

-- tambahan 

INSERT INTO `mydb`.`sales_trend_last_week` (`Tanggal`, `Total Transaksi`, `Total Penjualan`, `Rata-rata Penjualan`, `Pertumbuhan (%)`)
SELECT 
    DATE(st.transaksiDate) AS `Tanggal`,
    COUNT(st.transaksiID) AS `Total Transaksi`,
    SUM(st.totalAmount) AS `Total Penjualan`,
    ROUND(AVG(st.totalAmount), 2) AS `Rata-rata Penjualan`,
    ROUND(
        (SUM(st.totalAmount) - 
        LAG(SUM(st.totalAmount)) OVER (ORDER BY DATE(st.transaksiDate))) / 
        LAG(SUM(st.totalAmount)) OVER (ORDER BY DATE(st.transaksiDate)) * 100, 
        2
    ) AS `Pertumbuhan (%)`
FROM 
    `Sales Transaksi` st
WHERE 
    st.transaksiDate >= '2023-01-01 00:00:00' -- Data mulai dari tahun 2023
    OR st.transaksiDate >= NOW() - INTERVAL 7 DAY -- Data minggu terakhir
GROUP BY 
    DATE(st.transaksiDate)
ORDER BY 
    DATE(st.transaksiDate) ASC;


INSERT INTO `mydb`.`sales_trend_last_year` (`Bulan`, `Total Transaksi`, `Total Penjualan`, `Rata-rata Penjualan`, `Pertumbuhan (%)`)
SELECT 
    DATE_FORMAT(st.transaksiDate, '%Y-%m-01') AS `Bulan`,
    COUNT(st.transaksiID) AS `Total Transaksi`,
    SUM(st.totalAmount) AS `Total Penjualan`,
    ROUND(AVG(st.totalAmount), 2) AS `Rata-rata Penjualan`,
    ROUND(
        (SUM(st.totalAmount) - 
        LAG(SUM(st.totalAmount)) OVER (ORDER BY DATE_FORMAT(st.transaksiDate, '%Y-%m-01'))) / 
        LAG(SUM(st.totalAmount)) OVER (ORDER BY DATE_FORMAT(st.transaksiDate, '%Y-%m-01')) * 100, 
        2
    ) AS `Pertumbuhan (%)`
FROM
    `Sales Transaksi` st
WHERE 
    st.transaksiDate >= '2022-01-01 00:00:00' -- Data mulai dari tahun 2022
    OR st.transaksiDate >= NOW() - INTERVAL 1 YEAR -- Data tahun terakhir
GROUP BY
    DATE_FORMAT(st.transaksiDate, '%Y-%m-01')
ORDER BY
    DATE_FORMAT(st.transaksiDate, '%Y-%m-01') ASC;
    
-- Create table for shipment details
CREATE TABLE IF NOT EXISTS `mydb`.`shipment_details` AS
SELECT 
    s.`shipmentID`,
    s.`shipment-date` AS `Shipment Date`,
    s.`delivery-method` AS `Delivery Method`,
    sa.`shipment-address-city` AS `City`,
    sa.`shipment-address-country` AS `Country`,
    sa.`shipment-address-state` AS `State`,
    sa.`shipment-address-postal-code` AS `Postal Code`,
    s.`status-shipment` AS `Status`,
    s.`trackingNumber-shipment` AS `Tracking Number`,
    o.`orderID`,
    o.`OrderDate`,
    c.`customerID`,
    CONCAT(nc.`first-name-customer`, ' ', nc.`last-name-customer`) AS `Customer Name`,
    st.`transaksiID`,
    st.`payment-methode` AS `Payment Method`
FROM
    `Shipment` s
INNER JOIN `Shipment-Address` sa ON s.`shipmentID` = sa.`shipmentID`
INNER JOIN `Order` o ON s.`orderID` = o.`orderID`
INNER JOIN `Customer` c ON o.`customerID` = c.`customerID`
INNER JOIN `Name-Customer` nc ON c.`customerID` = nc.`customerID`
INNER JOIN `Sales Transaksi` st ON o.`transaksiID` = st.`transaksiID`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
