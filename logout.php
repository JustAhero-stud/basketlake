<?php
ob_start();
session_start();
$_SESSION['admin'] = 0;
header('Location: index.php', false);
