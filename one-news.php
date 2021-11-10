<?php
session_start();
$id = (int)$_GET['id'];
$mysqli = new mysqli("localhost", "root", "", "basketlake");
if ($mysqli->connect_errno) {
    echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
$results = $mysqli->query("SELECT * FROM news where id = $id");
$news = $results->fetch_object();
?>
<head>
    <meta charset="utf-8">
    <title>News</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<div class="line">
    <?php
    include('index.php');
    ?>
    <div id="news" class="border" >
        <p style="text-align: center">
            <img src='<?php echo "$news->img"?>' alt='' class="image-news">
        </p>
            <div>
                <p class="news"> <?php echo $news->header ?></p>
                <p class="text-news">
                 <?php echo $news->alltext ?>
                </p>
            </div>
        <?php
            if (isset($_SESSION['admin']) && ($_SESSION['admin'] === 1)) {
            ?>
                <p class="string"><a href="delete.php?id=<?php echo $id ?>" style="color: orangered">delete</a></p>
            <?php
            }
            ?>
    </div>
</div>
