<?php

include 'config.php';

$username = $_POST["username"];
$no_telepon = $_POST["no_telepon"];
$email = $_POST["email"];
$alamat = $_POST["alamat"];
$password = $_POST["password"];
$role = $_POST['role'] ;

$query = "INSERT INTO login VALUES('','$username','$alamat',$no_telepon,'$email','$password','$role')" ;
mysqli_query($mysqli,$query) ;
echo mysqli_error($mysqli) ;
header("Location: login.php") ;

?>