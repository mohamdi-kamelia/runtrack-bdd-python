mysql> SELECT * FROM etudiant
    -> ORDER BY age ASC
    -> LIMIT 1;
+----+--------+--------+-----+-------------------------------+
| id | nom    | prenom | age | email                         |
+----+--------+--------+-----+-------------------------------+
|  4 | Binkie | Barnes |  16 | binkie.barnes@laplateforme.io |
+----+--------+--------+-----+-------------------------------+
1 row in set (0.00 sec)

Terminal:
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant ORDER BY age ASC LIMIT 1;" > job22.sql
PS C:\Users\kamil> cat job22.sql
USE LaPlateforme; SELECT * FROM etudiant ORDER BY age ASC LIMIT 1;