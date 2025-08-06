-- Creation de la base de donnees
CREATE DATABASE IF NOT EXISTS bibliotheque;
USE bibliotheque;

-- Creation de la table Auteurs
CREATE TABLE IF NOT EXISTS Auteurs (
    id_auteur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    nationalite VARCHAR(50)
);

-- Insertion des donnees dans la table Auteurs
INSERT INTO Auteurs (nom, nationalite) VALUES
('Victor Hugo', 'Francais'),
('Jane Austen', 'Anglais'),
('Gabriel Garcia Marquez', 'Colombien');

-- Creation de la table Livres
CREATE TABLE IF NOT EXISTS Livres (
    id_livre INT AUTO_INCREMENT PRIMARY KEY,
    titre VARCHAR(100) NOT NULL,
    annee_publication INT,
    id_auteur INT,
    FOREIGN KEY (id_auteur) REFERENCES Auteurs(id_auteur)
);

-- Insertion des donnees dans la table Livres
INSERT INTO Livres (titre, annee_publication, id_auteur) VALUES
('Les Miserables', 1862, 1),
('Orgueil et Prejuges', 1813, 2),
('Cent ans de solitude', 1967, 3);

-- Creation de la table Emprunteurs
CREATE TABLE IF NOT EXISTS Emprunteurs (
    id_emprunteur INT AUTO_INCREMENT PRIMARY KEY,
    nom VARCHAR(50) NOT NULL,
    adresse VARCHAR(100)
);

-- Insertion des donnees dans la table Emprunteurs
INSERT INTO Emprunteurs (nom, adresse) VALUES
('Jean Dupont', '123 Rue de la Bibliotheque'),
('Marie Martin', '456 Avenue des Livres'),
('Pierre Durand', '789 Boulevard de la Lecture');

-- Creation de la table Emprunts
CREATE TABLE IF NOT EXISTS Emprunts (
    id_emprunt INT AUTO_INCREMENT PRIMARY KEY,
    id_livre INT,
    id_emprunteur INT,
    date_emprunt DATE,
    date_retour DATE,
    FOREIGN KEY (id_livre) REFERENCES Livres(id_livre),
    FOREIGN KEY (id_emprunteur) REFERENCES Emprunteurs(id_emprunteur)
);

-- Insertion des donnees dans la table Emprunts
INSERT INTO Emprunts (id_livre, id_emprunteur, date_emprunt, date_retour) VALUES
(1, 1, '2023-01-15', '2023-02-15'),
(2, 2, '2023-03-20', '2023-04-10'),
(3, 3, '2023-06-05', '2023-07-05'),
(1, 1, '2023-01-16', '2023-02-16'),
(2, 2, '2023-03-21', '2023-04-11'),
(3, 3, '2023-06-06', '2023-07-06');
