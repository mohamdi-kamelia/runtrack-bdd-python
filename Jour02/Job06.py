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

# Requête SQL pour calculer la capacité totale des salles
requete_sql = "SELECT SUM(capacite) AS capacite_totale FROM salle"

# Exécution de la requête
curseur.execute(requete_sql)

# Récupération du résultat
resultat = curseur.fetchone()[0]

# Affichage du résultat
print(f"La capacité totale des salles est de {resultat} places")

# Fermeture du curseur et de la connexion
curseur.close()
connexion.close()
