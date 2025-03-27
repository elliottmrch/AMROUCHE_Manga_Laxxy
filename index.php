<?php
require_once 'Model/pdo.php';

$sqlManga = $dbPDO->prepare("SELECT id, titre, annee_publi FROM manga ORDER BY annee_publi DESC");
$sqlManga->execute();
$resManga = $sqlManga->fetchAll();

?>

<body>
    <h1>Top manga :</h1>
    <ul>
        <?php foreach ($resManga as $manga): ?>
            <li>
                <a href="Views/manga.php?id=<?php echo $manga['id']; ?>"><?php echo $manga['titre']; ?></a><br>
                <p><?php echo $manga['annee_publi']; ?></p>
            </li>
        <?php endforeach; ?>
    </ul>
</body>