import mysql.connector

class Employe:
    def __init__(self, nom, prenom, salaire, id_service):
        self.nom = nom
        self.prenom = prenom
        self.salaire = salaire
        self.id_service = id_service

def create_employe_table(conn):
    cursor = conn.cursor()
    cursor.execute('''
        CREATE TABLE IF NOT EXISTS employe (
            id INT AUTO_INCREMENT PRIMARY KEY,
            nom VARCHAR(255),
            prenom VARCHAR(255),
            salaire DECIMAL(10, 2),
            id_service INT
        )
    ''')
    conn.commit()

def insert_employe(conn, employe):
    cursor = conn.cursor()
    cursor.execute('''
        INSERT INTO employe (nom, prenom, salaire, id_service)
        VALUES (%s, %s, %s, %s)
    ''', (employe.nom, employe.prenom, employe.salaire, employe.id_service))
    conn.commit()

def get_high_salary_employes(conn):
    cursor = conn.cursor()
    cursor.execute('SELECT * FROM employe WHERE salaire > 3000')
    return cursor.fetchall()

def main():
    # Connexion à la base de données MySQL
    conn = mysql.connector.connect(
        host='localhost',
        user='root',
        password='kamelia',
        database='Job'
    )

    # Création de la table "employe"
    create_employe_table(conn)

    # Insertion des employés
    employes = [
        Employe('Doe', 'John', 3500.00, 1),
        Employe('Smith', 'Jane', 2800.00, 2),
        Employe('Johnson', 'Bob', 4000.00, 1),
        Employe('Williams', 'Alice', 3200.00, 2)
    ]

    for employe in employes:
        insert_employe(conn, employe)

    # Récupération des employés avec un salaire supérieur à 3 000 €
    high_salary_employes = get_high_salary_employes(conn)
    print("Employés avec un salaire supérieur à 3 000 €:")
    for employe in high_salary_employes:
        print(employe)

    # Fermeture de la connexion
    conn.close()

if __name__ == '__main__':
    main()


