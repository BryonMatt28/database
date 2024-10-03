<?php
$host = "localhost";
$user = 'root';
$password = '';
$dbname = 'patawaran';
$dsn = "mysql:host=$host;dbname=$dbname"; 

try {

    $pdo = new PDO($dsn, $user, $password);

    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $pdo->exec("SET time_zone = '+8:00';");
} catch (PDOException $e) {
    die("Error: Could not connect. " . $e->getMessage());
}
?>
