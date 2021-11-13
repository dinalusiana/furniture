<?php
//proses
//tangkap request dari link edit (idedit)
$idedit = $_GET['idedit'];
$id[] = $idedit; //simpan data array
if(!empty($idedit))//modus mengedit data lama  
{
        $qe = "SELECT * FROM transaksi WHERE id_transaksi = ?";
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
                <?php
                
                ?>
            </th></tr>
        </tfoot>
        <tbody>
            <tr>
                <td>
                    Nama : <br>
                    <input type="text" value="<?php echo $row['kode_barang'];?>" name="kode_barang" size="30" />
                </td>
            <tr>
                <td>
                    Alamat : <br>
                    <input type="text" value="<?php echo $row['id_customer'];?>" name="id_customer" size="30" />
                </td>
            </tr>
            <tr>
                <td>
                    Kota : <br>
                    <input type="text" value="<?php echo $row['total_bayar'];?>" name="total_bayar" size="30" />      
                </td>
            </tr>
            <tr>
                <td>
                    No. Telepon : <br>
                    <input type="text" value="<?php echo $row['tanggal_transaksi'];?>" name="tanggal_transaksi" size="30" />
                </td>
            </tr>
            <tr>
                <td>
                    No. Telepon : <br>
                    <input type="text" value="<?php echo $row['detail'];?>" name="detail" size="30" />
                </td>
            </tr>
              
        </tbody>
    </table>
</form>
