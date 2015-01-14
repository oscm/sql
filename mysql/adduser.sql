CREATE USER 'test'@'xxx.xxx.xxx.xxx' IDENTIFIED BY  'your_password';

GRANT ALL PRIVILEGES ON yourdb.* TO 'neo'@'localhost' IDENTIFIED BY 'chen' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON *.* TO dba@localhost IDENTIFIED BY 'chen' WITH GRANT OPTION;

FLUSH PRIVILEGES;
		
