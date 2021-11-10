<?php
session_start();
$mysqli = new mysqli("localhost", "root", "", "basketlake");
if ($mysqli->connect_errno) {
    echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
$results = $mysqli->query("SELECT * FROM champ");
?>
<head>
    <meta charset="utf-8">
    <title>Champions</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
    <div class="line">
<?php
include('index.php');
?>
        <div id="champ" class="border">
                <?php
                while ($row = $results->fetch_object()) {
                ?>
                    <div class="champ">
                        <img src="<?php echo $row->image ?>" alt='' class="image-champ">
                        <h2><?php echo $row->text ?></h2>
                    </div>
                <?php
                }
                ?>
        </div>
    </div>
