<?php
$servername = "localhost"; // Nom du serveur
$username = "root"; // Nom d'utilisateur de la base de données
$password = "root"; // Mot de passe de la base de données
$dbname = "tur_manga"; // Nom de la base de données

try {
    $dbPDO = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    // Configuration de PDO pour générer des exceptions en cas d'erreur
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connexion réussie à la base de données"; 
    
echo "<h1>Top 5 manga :</h1>";

$resultat = "SELECT * FROM manga ORDER BY 'Année de publication' ASC";
$manga = $dbPDO->prepare($resultat);
$manga->execute();

$manga = $manga->fetchAll(PDO::FETCH_ASSOC);
echo "<ul>";
$i=1;
foreach($manga as $mangas) {
   
   echo "<li>" ."Manga n°$i : ". '<a href="../Partiel Web/personnage.php" target="_blank">' .$mangas['Titre']. "</a>". " sorti en ". $mangas['Année de publication']. " avec une note de ". $mangas['note']. " sur 10" ."<br><br></li>";
   $i++;
}
echo "</ul>";
} catch(PDOException $e) {
    echo "La connexion a échouée : " . $e->getMessage();
}


?>