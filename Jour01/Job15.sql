mysql> SELECT * FROM etudiant
    -> ORDER BY nom ASC, prenom ASC;
+----+--------+-----------+-----+---------------------------------+
| id | nom    | prenom    | age | email                           |
+----+--------+-----------+-----+---------------------------------+
|  1 | Betty  | Spaghetti |  23 | betty.Spaghetti@laplateforme.io |
|  4 | Binkie | Barnes    |  16 | binkie.barnes@laplateforme.io   |
|  2 | Chuck  | Steak     |  45 | Chuk.Steak@laplateforme.io      |
|  5 | Dupuis | Gertrude  |  20 | gertrude.dupuis@laplateforme.io |
|  6 | Dupuis | Martin    |  18 | martin.dupuis@laplateforme.io   |
|  3 | John   | Doe       |  18 | john.doe@laplateforme.io        |
+----+--------+-----------+-----+---------------------------------+
6 rows in set (0.00 sec)


terminal:

PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant ORDER BY nom ASC, prenom ASC;" > job15.sql
PS C:\Users\kamil> cat job15.sql
USE LaPlateforme; SELECT * FROM etudiant ORDER BY nom ASC, prenom ASC;
PS C:\Users\kamil>