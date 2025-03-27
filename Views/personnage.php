<?php
require_once '../Model/pdo.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    die('ID manquant dans l\'URL.');
}

$id = $_GET['id'];

$sqlPersonnages = $dbPDO->prepare("SELECT id, nom, description FROM personnage WHERE id = :id");
$sqlPersonnages->execute(['id' => $id]);
$personnages = $sqlPersonnages->fetch();
?>

<body>
    <h1><?php echo $personnages['nom']; ?></h1>
    <p><?php echo $personnages['description']; ?></p><br>

    <a href="../index.php">Retour vers page d'accueil</a>