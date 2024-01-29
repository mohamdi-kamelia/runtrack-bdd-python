mysql> SELECT * FROM etudiant
    -> WHERE age BETWEEN 18 AND 25
    -> ORDER BY age ASC;
+----+--------+-----------+-----+---------------------------------+
| id | nom    | prenom    | age | email                           |
+----+--------+-----------+-----+---------------------------------+
|  3 | John   | Doe       |  18 | john.doe@laplateforme.io        |
|  6 | Dupuis | Martin    |  18 | martin.dupuis@laplateforme.io   |
|  5 | Dupuis | Gertrude  |  20 | gertrude.dupuis@laplateforme.io |
|  1 | Betty  | Spaghetti |  23 | betty.Spaghetti@laplateforme.io |
+----+--------+-----------+-----+---------------------------------+
4 rows in set (0.00 sec)

terminal
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;" > job14.sql
PS C:\Users\kamil> cat job14.sql
USE LaPlateforme; SELECT * FROM etudiant WHERE age BETWEEN 18 AND 25 ORDER BY age ASC;
PS C:\Users\kamil>
