<?php
$host = 'localhost';
$username = 'root';
$password ='';
$name = 'wisata(1)';

$mysqli = new mysqli($host,$username,$password,$name);



function tambah($data){
    global $mysqli ;
    $nama = $data['nama'] ;
    $tempat = $data['tempat'] ;
    $deskripsi = $data['deskripsi'] ;
    $deskripsi_info = $data['deskripsi_info'] ;
    $jenis = $data['jenis'] ;
    $gambar = tambahgambar() ;

    $query = "
        INSERT INTO tbl_wisata 
        VALUES('','$nama','$tempat','$deskripsi','$gambar','$deskripsi_info','$jenis')
    
    " ;
        mysqli_query($mysqli,$query) ;

    return mysqli_affected_rows($mysqli) ;
}

function ubahdata($data){
    global $mysqli ;
    $id = $data['id'] ;
    $gambarlama = $data['gambarlama'] ;
    $nama = $data['nama'] ;
    $tempat = $data['tempat'] ;
    $deskripsi = $data['deskripsi'] ;
    $deskripsi_info = $data['deskripsi_info'] ;
    $jenis = $data['jenis'] ;
    $error = $_FILES['gambar']['error'] ;
    if($error > 0){
        $gambar = $gambarlama ;
    }
    else{
        $gambar = tambahgambar() ;
    }

    $query = "
    UPDATE tbl_wisata SET
    nama_wisata = '$nama',
    tempat = '$tempat',
    deskripsi = '$deskripsi',
    gambar = '$gambar',
    deskripsi_info = '$deskripsi_info',
    jenis = '$jenis'
    WHERE id = $id
" ;


mysqli_query($mysqli,$query) ;
    
echo mysqli_error($mysqli) ;
die ;
return mysqli_affected_rows($mysqli) ;
}


function tambahgambar(){
    $name = $_FILES['gambar']['name'] ;
    $tmp = $_FILES['gambar']['tmp_name'] ;
    $size = $_FILES['gambar']['size'] ;
    $error = $_FILES['gambar']['error'] ;

        if($error === 4){
            return false ;
        } 
        move_uploaded_file($tmp,"../poto/".$name) ;
return $name;   
}


function hapusdata($id){
    global $mysqli ;
    mysqli_query($mysqli,"DELETE FROM tbl_wisata WHERE id = $id") ;
return mysqli_affected_rows($mysqli) ;
}

function hapususer($id){
    global $mysqli ;
    $query = "DELETE FROM login WHERE id = $id" ;
    mysqli_query($mysqli,$query) ;
    echo mysqli_error($mysqli) ;
return mysqli_affected_rows($mysqli) ;
}






?>