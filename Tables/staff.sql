CREATE TABLE `staff` (
  `StaffId` INT NOT NULL AUTO_INCREMENT,
  `FirstName` VARCHAR(50) NOT NULL,
  `LastName` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(255) NOT NULL,
  `Phone` VARCHAR(25) DEFAULT NULL,
  `Active` TINYINT NOT NULL,
  `StoreId` INT NOT NULL,
  `ManagerId` INT DEFAULT NULL,
  PRIMARY KEY (StaffId)
)
ENGINE = INNODB,
CHARACTER SET utf8mb4,
COLLATE utf8mb4_0900_ai_ci;

ALTER TABLE `staff` 
  ADD UNIQUE INDEX Email(Email);

ALTER TABLE `staff` 
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (StoreId)
    REFERENCES store(StoreId);

ALTER TABLE `staff` 
  ADD CONSTRAINT `staff_ibfk_2` FOREIGN KEY (ManagerId)
    REFERENCES staff(StaffId);