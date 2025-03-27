<?php
require_once '../Model/pdo.php';

if (!isset($_GET['id']) || empty($_GET['id'])) {
    die('ID manquant dans l\'URL.');
}

$id = $_GET['id'];

$sql = $dbPDO->prepare("SELECT manga.titre AS manga_titre, manga.note AS manga_note, manga.description AS manga_descri,
    auteur.nom AS auteur_nom, auteur.date_naissance AS auteur_naissance, personnage.nom AS personnage_nom, personnage.id AS personnage_id
    FROM manga
    JOIN auteur ON manga.id_auteur = auteur.id
    JOIN personnage ON manga.id = personnage.id_manga
    WHERE manga.id = :id");
$sql->execute(['id' => $id]);
$manga = $sql->fetch();
?>

<body>
    <h1><?php echo $manga['manga_titre'] . ' - ' . $manga['manga_note'] . ' / 10'; ?></h1>
    <p><?php echo $manga['auteur_nom'] . ' - ' . $manga['auteur_naissance']; ?></p><br>
    <p><?php echo $manga['manga_descri']; ?></p><br>
    <h2>Personnages :</h2>
    <ul>
        <?php
        $sqlPersonnages = $dbPDO->prepare("SELECT id, nom FROM personnage WHERE id_manga = :id");
        $sqlPersonnages->execute(['id' => $id]);
        $personnages = $sqlPersonnages->fetchAll();

        foreach ($personnages as $personnage) {

            echo '<li><a href="personnage.php?id=' . $personnage['id'] . '">' . $personnage['nom'] . '</a></li>';
        }
        ?>
    </ul>

    <a href="../index.php">Retour</a>
</body>