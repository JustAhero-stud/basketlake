
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css"  href="style/style.css" />
    <meta charset="UTF-8">
    <title>BasketLake</title>
</head>
<body>
<div class="line">
    <div id="menu">
        <a href="index.php">
            <h1  class="unselectable">BasketLake</h1>
        </a>
        <div id="nav-bar">
            <p class="nav-button">
                <a href="news.php"> News</a>
            </p>
            <p class="nav-button">
                <a href="champ.php">Last 5 titles</a>
            </p>
            <?php
            session_start();

            if (isset($_SESSION['admin']) && ($_SESSION['admin'] > 0)) {
                ?>
                <p class="nav-button">
                    <a href="add.php">Addnews</a>
                </p>
                <p class="nav-button">
                    <a href="logout.php">Logout</a>
                </p>
                <?php
            }
            else {
                ?>
                <p class="nav-button">
                    <a href="login.php">Login</a>
                </p>
            <?php
            }

            ?>
        </div>
    </div>
</div>


</body>
</html>