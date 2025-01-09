<?php
session_start();
include 'config.php';

$username = $_POST["username"];
$password = $_POST["pwd"];
$action = 'true';

$result = $mysqli->query('SELECT * from login order by id asc');

if($result){
    while($menu = $result ->fetch_object()){
        if($menu->username === $username && $menu ->password === $password){
            $_SESSION ['id'] = $menu->id;
            $_SESSION ['username'] = $username;
            $_SESSION ['alamat'] = $menu->alamat;
            $_SESSION['login'] = true ;
            $_SESSION['no_telepon'] = $menu->no_telepon ;
            $_SESSION['alamat'] = $menu->alamat ;
            $_SESSION['email'] = $menu->email ;
             $_SESSION['password'] = $menu->password ;
            header("location:home.php");
        }else{
            if($action === 'true'){
                redirect();
            }$action = 'false';
        }
    }
}

function redirect(){
    echo '<h1>Invalid Login....</h1>';
    echo ("Refresh : 3; url=login.php");
}
?>