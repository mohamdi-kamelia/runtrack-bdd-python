mysql> SELECT COUNT(*) as nombre_etudiants_18_25 FROM etudiant
    -> WHERE age BETWEEN 18 AND 25;
+------------------------+
| nombre_etudiants_18_25 |
+------------------------+
|                      3 |
+------------------------+
1 row in set (0.00)

Terminal:
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT COUNT(*) as nombre_etudiants_18_25 FROM etudiant WHERE age BETWEEN 18 AND 25;"
 > job21.sql
PS C:\Users\kamil> cat job21.sql
USE LaPlateforme; SELECT COUNT(*) as nombre_etudiants_18_25 FROM etudiant WHERE age BETWEEN 18 AND 25;