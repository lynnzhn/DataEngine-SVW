DROP TABLE IF EXISTS employee;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `department` varchar(20) NOT NULL,
  `managerid` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=208 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `employee` VALUES (101, 'John', 'A', NULL);
INSERT INTO `employee` VALUES (102, 'Dan', 'A', 101);
INSERT INTO `employee` VALUES (103, 'James', 'A', 101);
INSERT INTO `employee` VALUES (104, 'Amy', 'A', 101);
INSERT INTO `employee` VALUES (105, 'Anne', 'A', 101);
INSERT INTO `employee` VALUES (106, 'Ron', 'B', 101);