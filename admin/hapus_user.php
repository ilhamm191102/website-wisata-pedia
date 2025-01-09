<?php
require "../config.php" ;
$hapus = $_GET['id'] ;

if(hapususer($hapus) > 0){
    echo"     
    <script>
        alert('user berhasil dihapus') ;
        document.location.href='admin.php' ;
    </script>      
" ;
}
else{
    echo"     
    <script>
        alert('user tidak berhasil dihapus') ;
      
    </script>      
" ;
}


?>