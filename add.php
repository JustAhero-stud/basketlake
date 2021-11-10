<?php
session_start();
?>
<head>
    <meta charset="utf-8">
    <title>Add news</title>
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>

<body>
<div class="line">
    <?php
    include ('index.php');
    ?>
    <form method="post" class="border" id="add" action="add-news.php">
        <div class="string" >
            <p>Headline:</p>
         <textarea name="headline" required></textarea>
        </div>
        <div class="string" >
            <p>Announce:</p>
            <textarea name="announce" required></textarea>
        </div>
        <div class="string">
            <p>Image address:</p>
            <textarea name="img" required></textarea>
        </div>
        <div class="string">
            <p>Full text:</p>
            <textarea name="text" required></textarea>
        </div>
        <div class="string" >
            <input type="submit" value="Send" class="send">
         </div>

        </div>
</body>