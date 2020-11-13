# BDD-Bibliotheque-SQL
1. SELECT titre FROM Livre;
2. SELECT titre,idEditeur FROM Livre;
3. SELECT * FROM Livre;
4. SELECT * FROM Auteur;
5. SELECT titre FROM Livre ORDER BY titre;
6. SELECT titre FROM Livre ORDER BY titre ASC;
7. SELECT titre FROM Livre ORDER BY titre DESC;
8. SELECT titre FROM Livre ORDER BY titre LIMIT 1, 3;
9. SELECT * FROM Abonne ORDER BY nom asc, prenom desc;
10. SELECT COUNT(*) FROM Abonne;
11. SELECT COUNT(*) FROM Abonne GROUP BY nom;
12. SELECT nom,COUNT(*) FROM Abonne GROUP BY nom;
13. SELECT * FROM Livre INNER JOIN Editeur ON Livre.idEditeur= Editeur.idEditeur;
14. SELECT * FROM Livre NATURAL JOIN Editeur;
15. SELECT Editeur.nom, Livre.titre FROM Livre LEFT JOIN Editeur ON Livre.idEditeur=Editeur.idEditeur;
16. SELECT Editeur.nom, Livre.titre FROM Livre RIGHT OUTER JOIN Editeur ON Livre.idEditeur= Editeur.idEditeur ;
17. SELECT * FROM Livre INNER JOIN Editeur ON Livre.idEditeur= Editeur.idEditeur ORDER BY Editeur.nom;
18. SELECT E.nom, L.titre from Livre L INNER JOIN Editeur E ON L.idEditeur=E.idEditeur;
