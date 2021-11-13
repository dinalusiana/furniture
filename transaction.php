<?php
//proses
//tangkap request dari link edit (idedit)
$idedit = $_GET['idedit'];
$id[] = $idedit; //simpan data array
if(!empty($idedit))//modus mengedit data lama  
{
        $qe = "SELECT * FROM customer WHERE id_customer = ?";
        //PDO
        $ps = $dbh->prepare($qe);
        $ps->execute($id);
        $row = $ps->fetch(); //ambil satu baris data
}
 else { //modus entry data baru from dalam keadaan kosong
     $row = array(); //tidak ada data lama yang diedit
}
?>

<form method="POST" name="transaction" action="process_transaction.php">
    <table align="left" cellpadding="10" width="400">
        <thead>
            <tr><th colspan ="2" align="left"><h1>Transaction</h1></th></tr>
        </thead>
        <tfoot>
            <tr><th colspan ="2" align="left">
                    
                <?php
                
                ?>
                <input class="button" type="submit" name="proses" value="Save" />&nbsp;
                <a href=”transaksi_lanjut.php” class=”btn btn-primary  btn-xs”>Transaksi Selanjutnya</a> .
                <?php
                
                ?>
            </th></tr>
        </tfoot>
        <tbody>
            <tr>
                <td>
                    Nama : <br>
                    <input type="text" value="<?php echo $row['nama_customer'];?>" name="nama_customer" size="30" />
                </td>
            <tr>
                <td>
                    Alamat : <br>
                    <input type="text" value="<?php echo $row['alamat'];?>" name="alamat" size="30" />
                </td>
            </tr>
            <tr>
                <td>
                    Kota : <br>
                    <input type="text" value="<?php echo $row['kota'];?>" name="kota" size="30" />      
                </td>
            </tr>
            <tr>
                <td>
                    No. Telepon : <br>
                    <input type="text" value="<?php echo $row['no_telp'];?>" name="no_telp" size="30" />
                </td>
            </tr>
              
        </tbody>
    </table>
</form>
