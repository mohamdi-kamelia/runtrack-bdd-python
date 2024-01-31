mysql> SELECT * FROM etudiant
    -> ORDER BY age DESC;
+----+----------+-----------+-----+---------------------------------+
| id | nom      | prenom    | age | email                           |
+----+----------+-----------+-----+---------------------------------+
|  2 | Chuck    | Steak     |  45 | Chuk.Steak@laplateforme.io      |
|  1 | Betty    | Spaghetti |  23 | betty.Spaghetti@laplateforme.io |
|  5 | Gertrude | Dupuis    |  20 | gertrude.dupuis@laplateforme.io |
|  3 | John     | Doe       |  18 | john.doe@laplateforme.io        |
|  4 | Binkie   | Barnes    |  16 | binkie.barnes@laplateforme.io   |
+----+----------+-----------+-----+---------------------------------+
5 rows in set (0.00 sec)

PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant ORDER BY age DESC;" > job10.sql
PS C:\Users\kamil> ls -l job10.sql


    Répertoire : C:\Users\kamil


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     16:40            124 job10.sql


PS C:\Users\kamil> cat job10.sql
USE LaPlateforme; SELECT * FROM etudiant ORDER BY age DESC;
PS C:\Users\kamil>
