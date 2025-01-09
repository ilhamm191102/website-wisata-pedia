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
        <a href = home.php >Home</a>
        <a href = wisataalam.php >Wisata Viral</a>
        <a href = cafeviral.php>Cafe viral</a>
        <a href = kontak.php>Kontak</a>
        </div>
    </header>

    <section class="home wisataalam">
        <h1>SELAMAT DATANG DI WEBSITE WISATA SUMATRA BARAT</h1>
        <a class="btn">selengkapnya...</a>
    </section>

    <section class="wisata">
        <h1>Daftar Wisata alam Di Sumatera Barat</h1>

        <?php foreach($wisata as $w) :?>
        <div class="info-wisata">
            <h3 class="title-wisata"><?= $i ;?>.<?= $w['nama_wisata'] ;?> - <?= $w['tempat']?></h3>
            <?php $i++ ;?>
            <div class="img-info">
                    <img src="poto/<?= $w['gambar'] ;?>" >    
                <p class="info">Tempat wisata di Sumatera Barat - <?= $w['nama_wisata'] ;?></p>
            </div>
            <div class="text-info">
                <p><?= $w['deskripsi'] ;?></p>
            </div>  
        </div>
        <?php endforeach ; ?>

    </section>

</body>
</html>