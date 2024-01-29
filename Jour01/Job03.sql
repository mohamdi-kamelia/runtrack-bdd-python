mysql> USE laPlateforme;
Database changed
mysql> CREATE TABLE etudiant (
    -> id INT AUTO_INCREMENT PRIMARY KEY,
    -> nom VARCHAR(225) NOT NULL,
    -> prenom VARCHAR(225) NOT NULL,
    -> age INT NOT NULL,
    -> email VARCHAR(225) NOT NULL );
Query OK, 0 rows affected (0.03 sec)

mysql> SHOW TABLES;
+------------------------+
| Tables_in_laplateforme |
+------------------------+
| etudiant               |
+------------------------+
1 row in set (0.01 sec)

