<?php
$db_host     ='localhost';
$db_user     ='root';
$db_pass     ='';
$db_database ='parking011';

$db = new PDO('mysqli:host='.$db_host.';dbname='.$db_database, $db_user, $db_pass);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "parking011";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$connect=mysqli_connect("localhost", "root", "", "parking011") or die(mysqli_error());
?>
