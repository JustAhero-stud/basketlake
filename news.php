<?php
session_start();
$mysqli = new mysqli("localhost", "root", "", "basketlake");
if ($mysqli->connect_errno) {
    echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
}
$results = $mysqli->query("SELECT * FROM news");
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
    <div id="news" >
        <table cellspacing="0" class="border">
            <tbody>
<?php
while ($row = $results->fetch_object()) {
?>
                    <tr>
                        <td>
                            <div class="one-new">
                                <img src='<?php echo "$row->img"?>' alt='' class="image-news">
                                <div>
                                    <p class="heading"><a href="one-news.php?id=<?php echo $row->id ?>"><?php echo $row->header ?></a></p>
                                    <H2 class="announce"><?php echo $row->anounnce ?></H2>
                                </div>
                            </div>
                        </td>
                    </tr>
<?php
}
?>
            </tbody>
        </table>
    </div>
</div>
