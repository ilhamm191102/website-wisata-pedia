<?php
session_start();
include 'config.php';
function login($username, $password)
{
    global $mysqli;

    // Escape string untuk mencegah SQL Injection
    $username = $username;
    $password = $password;

    // Query untuk mendapatkan data user berdasarkan username
    $query = "SELECT * FROM login WHERE username='$username'";
    $result = mysqli_query($mysqli, $query);

    if (mysqli_num_rows($result) === 1) {
        $row = mysqli_fetch_assoc($result);

        // Memverifikasi password
        if ($password == $row['password']) {
            // Login berhasil

            // Set session login
            $_SESSION['login'] = true;
            $_SESSION['username'] = $row['username'];
            $_SESSION['role'] = $row['role'];

            // Redirect ke halaman sesuai peran
            if ($row['role'] === 'admin') {
                header("Location: admin/admin.php");
            } elseif ($row['role'] === 'user') {
                header("Location: home.php");
            }
            exit;
        }
    }

    // Jika login gagal
    return false;
}

if(isset($_POST['submit'])){
    $username = $_POST['username'] ;
    $password = $_POST['password'] ;
    if (login($username, $password)) {
        // Login berhasil
        echo "Login berhasil!";
    } else {
        // Login gagal
        echo "Login gagal! Periksa kembali username dan password Anda.";
    }
}

?>
<html>
<head>
    <meta charset="UTF-8">
    <title>Wisata Sumbar</title>
    <meta name="description" content="Login - Register Template">
    <meta name="author" content="Lorenzo Angelino aka MrLolok">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="login1.css">
    <style>
        body {
            background-color: #303641;
        }
    </style>
</head>

<body>
    <div id="container-login">
        <div id="title">
            <i class="material-icons lock">lock</i> Login
        </div>

        <form method="post" action="">
            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">email</i>
                </div>
                <input id="username" placeholder="username" type="text" required class="validate" autocomplete="off" name="username">
            </div>

            <div class="clearfix"></div>

            <div class="input">
                <div class="input-addon">
                    <i class="material-icons">vpn_key</i>
                </div>
                <input id="password" placeholder="Password" type="password" required class="validate" autocomplete="off" name="password">
            </div>

            <div class="remember-me">
            </div>

            <input type="submit" value="Log In"  name="submit">
        </form>

        <div class="forgot-password">
            <a href="#">Forgot your password?</a>
        </div>
        <div class="privacy">
            <a href="#">Privacy Policy</a>
        </div>

        <div class="register">
            Don't have an account yet?
            <a href="register.php"><button id="register-link">Register here</button></a>
        </div>
    </div>
</body>

</html>
