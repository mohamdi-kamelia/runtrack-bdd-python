mysql> SELECT AVG(age) as moyenne_age FROM etudiant;
+-------------+
| moyenne_age |
+-------------+
|     23.8000 |
+-------------+
1 row in set (0.00 sec)



Terminal:
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT AVG(age) as moyenne_age FROM etudiant;" > job24.sql
PS C:\Users\kamil> cat job24.sql
USE LaPlateforme; SELECT AVG(age) as moyenne_age FROM etudiant;