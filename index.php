<?php
require_once 'Model/pdo.php';

$sqlManga = $dbPDO->prepare("SELECT titre, annee_publi FROM manga ORDER BY annee_publi DESC");
$sqlManga->execute();
$resManga = $sqlManga->fetchAll();

?>

<body>
    <h1>Top manga :</h1>
    <ul>
        <?php foreach ($resManga as $manga): ?>
            <li><u><?php echo $manga['titre'];?></u><br>
            <?php echo $manga['annee_publi']; ?></li>    
        <?php endforeach; ?>
    </ul>
</body>