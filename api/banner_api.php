<?php
header('Content-Type: application/json');
header('Access-Control-Allow-Origin: *'); // Allow access from any domain

$host = 'localhost';
$user = 'root';
$pass = '';
$dbname = 'banner-api';

// Connect to MySQL
$con = new mysqli($host, $user, $pass, $dbname);
if ($con->connect_error) {
    die(json_encode(["error" => "Database connection failed"]));
}

// Fetch the latest banner
$result = $con->query("SELECT * FROM banners ORDER BY id DESC LIMIT 1");
$banner = $result->fetch_assoc();

echo json_encode($banner);
?>
