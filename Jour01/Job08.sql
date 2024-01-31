mysql> USE laplateforme
Database changed
mysql> SELECT * FROM etudiant
    -> WHERE age < 18;
+----+--------+--------+-----+-------------------------------+
| id | nom    | prenom | age | email                         |
+----+--------+--------+-----+-------------------------------+
|  4 | Binkie | Barnes |  16 | binkie.barnes@laplateforme.io |
+----+--------+--------+-----+-------------------------------+
1 row in set (0.01 sec)


terminal :

PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE age < 18;" > job8.sql
PS C:\Users\kamil> ls -l job8.sql


    Répertoire : C:\Users\kamil


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        29/01/2024     16:26            118 job8.sql


PS C:\Users\kamil> cat job8.sql
USE LaPlateforme; SELECT * FROM etudiant WHERE age < 18;
PS C:\Users\kamil>