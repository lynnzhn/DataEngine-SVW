DROP PROCEDURE IF EXISTS `add_employee`;

CREATE DEFINER=`root`@`localhost` PROCEDURE `add_employee` (IN num INT)

BEGIN
	DECLARE i INT DEFAULT 0;
	DECLARE id INT DEFAULT 106;
	DECLARE managerid INT;
	--定义随机姓名
	DECLARE name2 varchar(20);
	--定义随机部门名称
	DECLARE depar varchar(5);
	
	REPEAT 
	SET i = i + 1;
	--设置随机姓名
	SELECT name INTO name2 FROM employee_names ORDER BY rand() LIMIT 1;
	--设置随机部门名称
	SELECT department INTO depar FROM employee ORDER BY rand() LIMIT 1;
	--设置随机managerid
	SET managerid = Round(rand()*(106-101)+101);
	--保证插入id从107+
	SET id = 106 + i;
	
	INSERT INTO svw.employee(id, name, department, managerid) VALUES (id, name2, depar, managerid);
	UNTIL i = num
	END REPEAT;
	COMMIT;
END