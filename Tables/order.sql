CREATE TABLE `order` (
  `OrderId` INT NOT NULL AUTO_INCREMENT,
  `CustomerId` INT DEFAULT NULL,
  `OrderStatus` TINYINT NOT NULL,
  `OrderDate` DATE NOT NULL,
  `RequiredDate` DATE NOT NULL,
  `ShippedDate` DATE DEFAULT NULL,
  `StoreId` INT NOT NULL,
  `StaffId` INT NOT NULL,
  PRIMARY KEY (OrderId)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `order` 
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (CustomerId)
    REFERENCES customer(CustomerId);

ALTER TABLE `order` 
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (StoreId)
    REFERENCES store(StoreId);

ALTER TABLE `order` 
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (StaffId)
    REFERENCES staff(StaffId);