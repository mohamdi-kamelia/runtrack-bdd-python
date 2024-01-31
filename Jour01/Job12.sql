mysql> INSERT INTO etudiant (nom, prenom, age, email)
    -> VALUES ('Dupuis', 'Martin', 18, 'martin.dupuis@laplateforme.io');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM etudiant
    -> WHERE nom = 'Dupuis';
+----+--------+----------+-----+---------------------------------+
| id | nom    | prenom   | age | email                           |
+----+--------+----------+-----+---------------------------------+
|  5 | Dupuis | Gertrude |  20 | gertrude.dupuis@laplateforme.io |
|  6 | Dupuis | Martin   |  18 | martin.dupuis@laplateforme.io   |
+----+--------+----------+-----+---------------------------------+
2 rows in set (0.00 sec)

TERMINAL /

PS C:\Users\kamil> echo "USE LaPlateforme; INSERT INTO etudiant (nom, prenom, age, email) VALUES ('Dupuis', 'Martin', 18, 'martin.dupuis@laplateforme.io');" > job12.sql
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT * FROM etudiant WHERE nom = 'Dupuis';" >> job12.sql
PS C:\Users\kamil> cat job12.sql
USE LaPlateforme; INSERT INTO etudiant (nom, prenom, age, email) VALUES ('Dupuis', 'Martin', 18, 'martin.dupuis@laplateforme.io');
USE LaPlateforme; SELECT * FROM etudiant WHERE nom = 'Dupuis';
PS C:\Users\kamil>