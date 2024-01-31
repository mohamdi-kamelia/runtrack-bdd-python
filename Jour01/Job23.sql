
mysql> SELECT * FROM etudiant
    -> ORDER BY age DESC
    -> LIMIT 1;
+----+-------+--------+-----+----------------------------+
| id | nom   | prenom | age | email                      |
+----+-------+--------+-----+----------------------------+
|  2 | Chuck | Steak  |  45 | Chuk.Steak@laplateforme.io |
+----+-------+--------+-----+----------------------------+
1 row in set (0.00 sec)


PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant ORDER BY age DESC LIMIT 1;" > job23.sql
PS C:\Users\kamil> cat job23.sql
USE LaPlateforme; SELECT * FROM etudiant ORDER BY age DESC LIMIT 1;
PS C:\Users\kamil>