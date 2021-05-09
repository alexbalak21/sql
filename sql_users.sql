-- LOGIN
--ROOT
mysql -h localhost -u root -padmin123

--ADMIN
mysql -h localhost -u admin -proot


--CHANGING USERS
--CREATING PASSWORD FOR ROOT
ALTER USER 'root'@'localhost' IDENTIFIED BY 'admin123';

--CREATE NEW USER 'admin'
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'root';

--GRANT ALL PRIVILAGES TO 'admin' USER 
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON *.* TO 'admin'@'%' WITH GRANT OPTION;

--SHOW PRIVIALGES OF admin USER
SHOW GRANTS FOR admin;