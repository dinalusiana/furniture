<?php

//proses pencarian
$keyword=$_GET['keyword'];
if(!empty($keyword)) $x=" WHERE nama_barang LIKE '%$keyword%'";

//tampilkan perkatagori
// $cat=$_GET['cat'];

// if(!empty($cat)) $q=" WHERE categories_id =$cat";

//difinisikan query
$sql= "SELECT * FROM barang$q $x ORDER BY kode_barang DESC ";
$rs = $dbh->query($sql);
?>
<h1> Products</h1>

<?php
foreach ($rs as $row) {
$rp=$row['harga'];    
echo '<div class="product_box">
        <h3>'.$row['nama_barang'].'</h3>
     <a href="#"><img src="images/product/'.$row['picture'].'" width="100" /></a>
     <p class="product_price">Rp. '.number_format($rp,2,',','.');
echo '</p>
        <p> Stok : '.$row['stok'].'</p>
     <p> '.$row['deskripsi'].'</p>';
echo
	'<a href="index.php?hal=transaction">BUY</a>';
        if(!empty($_SESSION['MEMBER'])){ //sesion start
echo '<a href="index.php?hal=newproduct&idedit='.$row['kode_barang'].'">Edit</a>';
        } // sesion finish
echo '</div>';  
        

}
?>