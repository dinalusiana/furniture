<?php

//proses pencarian
$keyword=$_GET['keyword'];

//tampilkan perkatagori
// $cat=$_GET['cat'];

// if(!empty($cat)) $q=" WHERE categories_id =$cat";

//difinisikan query
$sql= "SELECT * FROM transaksi$q $x ORDER BY id_transaksi DESC ";
$rs = $dbh->query($sql);
?>
<h1> Data Transaksi</h1>
<table class="table table-striped table-hover">
    <thead>
        <tr>
            <th>Nama Customer</th>
            <th>Alamat</th>
            <th>Kota</th>
            <th>No. Telepon</th>
            <th>Tanggal Transaksi</th>
            <th>Detail</th>
        </tr>
    </thead>
</table>