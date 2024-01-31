mysql> USE LaPlateforme;
Database changed
mysql> SELECT * FROM etudiant
    -> ORDER BY age ASC;
+----+----------+-----------+-----+---------------------------------+
| id | nom      | prenom    | age | email                           |
+----+----------+-----------+-----+---------------------------------+
|  4 | Binkie   | Barnes    |  16 | binkie.barnes@laplateforme.io   |
|  3 | John     | Doe       |  18 | john.doe@laplateforme.io        |
|  5 | Gertrude | Dupuis    |  20 | gertrude.dupuis@laplateforme.io |
|  1 | Betty    | Spaghetti |  23 | betty.Spaghetti@laplateforme.io |
|  2 | Chuck    | Steak     |  45 | Chuk.Steak@laplateforme.io      |
+----+----------+-----------+-----+---------------------------------+
5 rows in set (0.00 sec)


PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant ORDER BY age ASC;" > job9.sql
PS C:\Users\kamil> ls -l job9.sql


    Répertoire : C:\Users\kamil


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     16:33            122 job9.sql


PS C:\Users\kamil> cat job9.sql
USE LaPlateforme; SELECT * FROM etudiant ORDER BY age ASC;
PS C:\Users\kamil>