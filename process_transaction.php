<?php

include_once 'dbconection.php';

//tangkap request dari form (name element formnya)
//simpan ke variabel
$nama_customer = $_POST['nama_customer'];
$alamat= $_POST['alamat'];
$kota = $_POST['kota'];
$no_telp = $_POST['no_telp'];

//simpan ke data array
$data[] = $nama_customer; // ? 1
$data[] = $alamat; // ? 2
$data[] = $kota; // ? 3
$data[] = $no_telp; // ? 4

//proses
$tombol = $_POST['proses'];
        if($tombol == 'Save'){
         // jika diklik tombol simpan
         $sql="INSERT INTO customer (nama_customer, alamat, kota, no_telp)
             VALUES (?,?,?,?)";
        }
        elseif ($tombol == 'Edit'){
         //tangkap hidden field idx
         $data[] = $_POST['idx']; // ? ke -7 u/ id
            
         //jika diklik tombol ubah
            $sql = "UPDATE barang SET
            nama_barang=?, harga=?,picture=?,
            stok=?,deskripsi=?
            WHERE kode_barang=?";
        }
        elseif ($tombol == 'Remove'){
         //hapus ke 11 ? di atas
         unset($data);
         //tangkap hidden field idx
         $data[] = $_POST['idx']; // ? ke -1 u/ id
         //jika diklik tombol hapus
            $sql = "DELETE FROM barang WHERE kode_barang=?";
        }
        else{
         //batal proses dan kembalikan ke halaman pertama
         header('location:index.php?hal=home');
        }
        
                 
            //PDO
            //prepare statement query
            $ps = $dbh->prepare($sql); //siapkan query
            $ps->execute($data);

            //setelah selesai proses kembalikan ke halaman pegawai
            header('location:index.php?hal=products');
?>