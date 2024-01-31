import mysql.connector

class ZooManager:
    def __init__(self, host, user, password, database):
        self.conn = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
        self.create_tables()

    def create_tables(self):
        cursor = self.conn.cursor()

        # Création de la table "animal"
        cursor.execute('''
            CREATE TABLE IF NOT EXISTS animal (
                id INT AUTO_INCREMENT PRIMARY KEY,
                nom VARCHAR(255),
                race VARCHAR(255),
                id_cage INT,
                date_naissance DATE,
                pays_origine VARCHAR(255)
            )
        ''')

        # Création de la table "cage"
        cursor.execute('''
            CREATE TABLE IF NOT EXISTS cage (
                id INT AUTO_INCREMENT PRIMARY KEY,
                superficie FLOAT,
                capacite_max INT
            )
        ''')

        self.conn.commit()

    def ajouter_animal(self, nom, race, id_cage, date_naissance, pays_origine):
        cursor = self.conn.cursor()
        cursor.execute('''
            INSERT INTO animal (nom, race, id_cage, date_naissance, pays_origine)
            VALUES (%s, %s, %s, %s, %s)
        ''', (nom, race, id_cage, date_naissance, pays_origine))
        self.conn.commit()

    def supprimer_animal(self, animal_id):
        cursor = self.conn.cursor()
        cursor.execute('DELETE FROM animal WHERE id = %s', (animal_id,))
        self.conn.commit()

    def modifier_animal(self, animal_id, nom, race, id_cage, date_naissance, pays_origine):
        cursor = self.conn.cursor()
        cursor.execute('''
            UPDATE animal
            SET nom = %s, race = %s, id_cage = %s, date_naissance = %s, pays_origine = %s
            WHERE id = %s
        ''', (nom, race, id_cage, date_naissance, pays_origine, animal_id))
        self.conn.commit()

    def afficher_animaux(self):
        cursor = self.conn.cursor()
        cursor.execute('SELECT * FROM animal')
        animaux = cursor.fetchall()
        print("Animaux présents dans le zoo:")
        for animal in animaux:
            print(animal)

    def afficher_animaux_cages(self):
        cursor = self.conn.cursor()
        cursor.execute('''
            SELECT cage.id, cage.superficie, cage.capacite_max, GROUP_CONCAT(animal.nom, ', ') as animaux
            FROM cage
            LEFT JOIN animal ON cage.id = animal.id_cage
            GROUP BY cage.id
        ''')
        cages = cursor.fetchall()
        print("Animaux présents dans les cages:")
        for cage in cages:
            print(cage)

    def calculer_superficie_totale(self):
        cursor = self.conn.cursor()
        cursor.execute('SELECT SUM(superficie) FROM cage')
        superficie_totale = cursor.fetchone()[0]
        print(f"Superficie totale de toutes les cages : {superficie_totale} m²")

    def modifier_cage_animal(self, animal_id, nouvel_id_cage):
        cursor = self.conn.cursor()
        cursor.execute('UPDATE animal SET id_cage = %s WHERE id = %s', (nouvel_id_cage, animal_id))
        self.conn.commit()
        print(f"Cage de l'animal avec l'ID {animal_id} modifiée avec succès.")

    def fermer_connexion(self):
        self.conn.close()

if __name__ == "__main__":
    zoo_manager = ZooManager(
        host='localhost',
        user='root',
        password='kamelia',
        database='zoo'
    )

    while True:
        print("\nMenu:")
        print("1. Ajouter un animal")
        print("2. Supprimer un animal")
        print("3. Modifier un animal")
        print("4. Afficher tous les animaux")
        print("5. Afficher les animaux dans les cages")
        print("6. Calculer la superficie totale des cages")
        print("7. Modifier la cage d'un animal")
        print("8. Quitter")
        
        choix = input("Entrez votre choix (1-8): ")

        if choix == "1":
            nom = input("Nom de l'animal: ")
            race = input("Race de l'animal: ")
            id_cage = int(input("ID de la cage: "))
            date_naissance = input("Date de naissance (AAAA-MM-JJ): ")
            pays_origine = input("Pays d'origine: ")
            zoo_manager.ajouter_animal(nom, race, id_cage, date_naissance, pays_origine)

        elif choix == "2":
            animal_id = int(input("ID de l'animal à supprimer: "))
            zoo_manager.supprimer_animal(animal_id)

        elif choix == "3":
            animal_id = int(input("ID de l'animal à modifier: "))
            nom = input("Nouveau nom de l'animal: ")
            race = input("Nouvelle race de l'animal: ")
            id_cage = int(input("Nouvel ID de la cage: "))
            date_naissance = input("Nouvelle date de naissance (AAAA-MM-JJ): ")
            pays_origine = input("Nouveau pays d'origine: ")
            zoo_manager.modifier_animal(animal_id, nom, race, id_cage, date_naissance, pays_origine)

        elif choix == "4":
            zoo_manager.afficher_animaux()

        elif choix == "5":
            zoo_manager.afficher_animaux_cages()

        elif choix == "6":
            zoo_manager.calculer_superficie_totale()

        elif choix == "7":
            animal_id = int(input("ID de l'animal à modifier la cage: "))
            nouvel_id_cage = int(input("Nouvel ID de la cage: "))
            zoo_manager.modifier_cage_animal(animal_id, nouvel_id_cage)

        elif choix == "8":
            zoo_manager.fermer_connexion()
            print("Au revoir!")
            break

            
        else:
            print("Choix non valide. Veuillez entrer un nombre entre 1 et 8.")
