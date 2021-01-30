DROP TABLE IF EXISTS employee_names;
CREATE TABLE `employee_names` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `employee_names` VALUES (1, 'Name_A');
INSERT INTO `employee_names` VALUES (2, 'Name_B');
INSERT INTO `employee_names` VALUES (3, 'Name_C');
INSERT INTO `employee_names` VALUES (4, 'Name_D');
INSERT INTO `employee_names` VALUES (5, 'Name_E');
INSERT INTO `employee_names` VALUES (6, 'Name_F');