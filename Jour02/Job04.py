import mysql.connector

# Paramètres de connexion à la base de données
host = "localhost"  
user = "root"
password = "kamelia"
database = "laplateforme"

# Connexion à la base de données
connexion = mysql.connector.connect(
    host=host,
    user=user,
    password=password,
    database=database
)

# Création d'un objet curseur pour exécuter des requêtes SQL
curseur = connexion.cursor()

# Requête SQL pour récupérer les donnés  de la table "salle"
requete_sql = "SELECT nom, capacite FROM salle"

# Exécution de la requête
curseur.execute(requete_sql)

# Récupération des résultats
resultats = curseur.fetchall()

# Affichage des résultats
for resultat in resultats:
    print(f"Nom: {resultat[0]}, Capacité: {resultat[1]}")

# Fermeture du curseur et de la connexion
curseur.close()
connexion.close()
