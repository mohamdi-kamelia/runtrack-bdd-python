mysql> DELETE FROM etudiant
    ->  WHERE nom = 'John' AND prenom = 'Doe';
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM etudiant;
+----+--------+-----------+-----+---------------------------------+
| id | nom    | prenom    | age | email
  |
+----+--------+-----------+-----+---------------------------------+
|  1 | Betty  | Spaghetti |  20 | betty.Spaghetti@laplateforme.io |
|  2 | Chuck  | Steak     |  45 | Chuk.Steak@laplateforme.io      |
|  4 | Binkie | Barnes    |  16 | binkie.barnes@laplateforme.io   |
|  5 | Dupuis | Gertrude  |  20 | gertrude.dupuis@laplateforme.io |
|  6 | Dupuis | Martin    |  18 | martin.dupuis@laplateforme.io   |
+----+--------+-----------+-----+---------------------------------+
5 rows in set (0.00 sec)

Terminal:
PS C:\Users\kamil> echo "USE LaPlateforme; DELETE FROM etudiant WHERE nom = 'Doe' AND prenom = 'John';" > job18.sql
PS C:\Users\kamil> cat job18.sql
USE LaPlateforme; DELETE FROM etudiant WHERE nom = 'Doe' AND prenom = 'John';
