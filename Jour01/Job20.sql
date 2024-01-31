mysql> SELECT COUNT(*) as nombre_etudiants_mineurs FROM etudiant

    -> WHERE age < 18;
+--------------------------+
| nombre_etudiants_mineurs |
+--------------------------+
|                        1 |
+--------------------------+
1 row in set (0.00 sec)


Terminal:
PS C:\Users\kamil> echo "USE LaPlateforme; SELECT COUNT(*) as nombre_etudiants_mineurs FROM etudiant WHERE age < 18;" > job20.sql
PS C:\Users\kamil> cat job20.sql
USE LaPlateforme; SELECT COUNT(*) as nombre_etudiants_mineurs FROM etudiant WHERE age < 18;