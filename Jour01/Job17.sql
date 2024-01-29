mysql> UPDATE etudiant
    -> set age = 20
    -> WHERE nom = 'Betty' AND prenom = 'Spaghetti';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  SELECT * FROM etudiant;
+----+--------+-----------+-----+---------------------------------+
| id | nom    | prenom    | age | email
  |
+----+--------+-----------+-----+---------------------------------+
|  1 | Betty  | Spaghetti |  20 | betty.Spaghetti@laplateforme.io |
|  2 | Chuck  | Steak     |  45 | Chuk.Steak@laplateforme.io      |
|  3 | John   | Doe       |  18 | john.doe@laplateforme.io        |
|  4 | Binkie | Barnes    |  16 | binkie.barnes@laplateforme.io   |
|  5 | Dupuis | Gertrude  |  20 | gertrude.dupuis@laplateforme.io |
|  6 | Dupuis | Martin    |  18 | martin.dupuis@laplateforme.io   |
+----+--------+-----------+-----+---------------------------------+
6 rows in set (0.00 sec)

terminal

PS C:\Users\kamil> echo "USE LaPlateforme; UPDATE etudiant SET age = 20 WHERE nom = 'Spaghetti' AND prenom = 'Betty';" > job17.sql
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE nom = 'Spaghetti' AND prenom = 'Betty';" >> job17.sql
PS C:\Users\kamil> cat job17.sql
USE LaPlateforme; UPDATE etudiant SET age = 20 WHERE nom = 'Spaghetti' AND prenom = 'Betty';
USE LaPlateforme; SELECT * FROM etudiant WHERE nom = 'Spaghetti' AND prenom = 'Betty';
PS C:\Users\kamil>

