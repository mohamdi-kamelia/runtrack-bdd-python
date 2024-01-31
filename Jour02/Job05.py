import mysql.connector

# Connexion à la base de données
connexion = mysql.connector.connect(
    host = "localhost",  
    user = "root",
    password = "kamelia",
    database = "laplateforme", 
)

# Création d'un objet curseur pour exécuter des requêtes SQL
curseur = connexion.cursor()

# Requête SQL pour calculer la superficie totale des étages
requete_sql = "SELECT SUM(superficie) FROM etage"

# Exécution de la requête
curseur.execute(requete_sql)

# Récupération du résultat
resultat = curseur.fetchone()[0]

# Affichage du résultat
print(f"La superficie de La Plateforme est de {resultat} m2")

# Fermeture du curseur et de la connexion
curseur.close()
connexion.close()
