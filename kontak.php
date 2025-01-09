<?php

require "config.php" ;

    $result = mysqli_query($mysqli,"SELECT * FROM tbl_wisata") ;
    $wisata = [] ;
        while($wisataa = mysqli_fetch_assoc($result)){
            $wisata[] = $wisataa ;
        }
     
    $i = 1;    

?>

<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Slab:wght@400;700&family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="stylecss1.css">
</head>
<body>

    <header class="header">
        <a class="logo">Wisata Sumbar</a>
        <div class="navbar">
            <a href="home.php">Home</a>
            <a href="wisataalam.php">Wisata Viral</a>
            <a href="cafeviral.php">Cafe viral</a>
            <a href="kontak.php">Kontak</a>
        </div>    
            

    </header>

    <section class="home wisataalam">
      
    <div style="display: flex">
       <div style="color: white;text-align: center;">
        <h2>Contact Me</h2>
        <a style="color: white;font-size: 20px;" href = "https://api.whatsapp.com/send/?phone=%2B6282287338654&text&type=phone_number&app_absent=0">WhatsApp</a><br>
        <a style="color: white;font-size: 20px;" href = "mailto:muhammadilhamramadhan294@gmail.com">Email</a>
        </div>
    </div>
    </section>
</body>
</html>
