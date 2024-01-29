mysql> USE laplateforme;
Database changed
mysql> INSERT INTO etudiant (nom, prenom, age, email) VALUES
    -> ('Betty' , 'Spaghetti', '23', 'betty.Spaghetti@laplateforme.io'),
    -> ('Chuck' , 'Steak', '45', 'Chuk.Steak@laplateforme.io'),
    -> ('John' , 'Doe', '18', 'john.doe@laplateforme.io'),
    -> ('Binkie' , 'Barnes', '16', 'binkie.barnes@laplateforme.io'),
    -> ('Gertrude' , 'Dupuis', '20' ,'gertrude.dupuis@laplateforme.io');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0