mysql> SELECT * FROM etudiant
    -> WHERE prenom LIKE 'b%';
+----+--------+--------+-----+-------------------------------+
| id | nom    | prenom | age | email                         |
+----+--------+--------+-----+-------------------------------+
|  4 | Binkie | Barnes |  16 | binkie.barnes@laplateforme.io |
+----+--------+--------+-----+-------------------------------+
1 row in set (0.00 sec)

terminal 
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE prenom LIKE 'b%';" > job16.sql
PS C:\Users\kamil> cat job16.sql
USE LaPlateforme; SELECT * FROM etudiant WHERE prenom LIKE 'b%';
PS C:\Users\kamil>