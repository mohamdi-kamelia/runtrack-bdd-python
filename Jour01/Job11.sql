mysql> SELECT * FROM etudiant;
+----+----------+-----------+-----+---------------------------------+
| id | nom      | prenom    | age | email                           |
+----+----------+-----------+-----+---------------------------------+
|  1 | Betty    | Spaghetti |  23 | betty.Spaghetti@laplateforme.io |
|  2 | Chuck    | Steak     |  45 | Chuk.Steak@laplateforme.io      |
|  3 | John     | Doe       |  18 | john.doe@laplateforme.io        |
|  4 | Binkie   | Barnes    |  16 | binkie.barnes@laplateforme.io   |
|  5 | Gertrude | Dupuis    |  20 | gertrude.dupuis@laplateforme.io |
+----+----------+-----------+-----+---------------------------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM etudiant WHERE nom = 'Gertrude' AND prenom = 'Dupuis';
+----+----------+--------+-----+---------------------------------+
| id | nom      | prenom | age | email                           |
+----+----------+--------+-----+---------------------------------+
|  5 | Gertrude | Dupuis |  20 | gertrude.dupuis@laplateforme.io |
+----+----------+--------+-----+---------------------------------+
1 row in set (0.00 sec)

TERMINAL 
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE nom = 'Gertrude Dupuis';" > job11.sql
PS C:\Users\kamil> cat job11.sql
USE LaPlateforme; SELECT * FROM etudiant WHERE nom = 'Gertrude Dupuis';
PS C:\Users\kamil>