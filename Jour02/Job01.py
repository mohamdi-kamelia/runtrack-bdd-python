import mysql.connector

# Connexion à la base de données
myDB = mysql.connector.connect(
    host="localhost",
    user="root",
    password="kamelia",
    database="laplateforme",
)

# Création d'un objet curseur pour exécuter des requêtes SQL
curseur = myDB.cursor()
curseur.execute("SELECT * FROM etudiant WHERE id = 2")


# Récupération de tous les résultats
etudiant = curseur.fetchall()
print(etudiant)


# Fermeture du curseur et de la connexion
curseur.close()
myDB.close()
