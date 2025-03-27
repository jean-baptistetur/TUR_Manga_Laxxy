<?php
$servername = "localhost"; // Nom du serveur
$username = "root"; // Nom d'utilisateur de la base de données
$password = "root"; // Mot de passe de la base de données
$dbname = "tur_manga"; // Nom de la base de données

try {
    $dbPDO = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
  
    $dbPDO->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    echo "Connexion réussie à la base de données"; 

$resultat = "SELECT * FROM personnage";
$manga = $dbPDO->prepare($resultat);
$manga->execute();

$manga = $manga->fetchAll(PDO::FETCH_ASSOC);
echo "<ul>";
$i=1;
echo "<h1>description des personnages <br></h1>";
foreach($manga as $mangas) {
  echo "Description des personnages <br>" . $mangas["description"] . "<br><br>";
}
echo "</ul>";
echo '<a href="../Partiel Web/index.php>'. "Retour vers l'accueil" . "</a>";

} catch(PDOException $e) {
    echo "La connexion a échouée : " . $e->getMessage();
}


?>


