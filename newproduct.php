<?php
//proses
//tangkap request dari link edit (idedit)
$idedit = $_GET['idedit'];
$id[] = $idedit; //simpan data array
if(!empty($idedit))//modus mengedit data lama  
{
        $qe = "SELECT * FROM barang WHERE kode_barang = ?";
        //PDO
        $ps = $dbh->prepare($qe);
        $ps->execute($id);
        $row = $ps->fetch(); //ambil satu baris data
}
 else { //modus entry data baru from dalam keadaan kosong
     $row = array(); //tidak ada data lama yang diedit
}
?>

<form method="POST" name="newproduct" action="process_newproduct.php">
    <table align="left" cellpadding="10" width="400">
        <thead>
            <tr><th colspan ="2" align="left"><h1>New Product</h1></th></tr>
        </thead>
        <tfoot>
            <tr><th colspan ="2" align="left">
                    
                <?php
                if(empty($idedit)){  //modus entry data baru
                ?>
                <input class="button" type="submit" name="proses" value="Save" />&nbsp;
                <?php
                } 
                else { //modus data lama
                ?>
                <input class="button" type="submit" name="proses" value="Edit" />&nbsp;
                <input class="button" type="submit" name="proses" value="Remove"
                       onclick ="return confirm ('Anda Yakin Ingin Menghapus Data ...??')"/>
                <input type="hidden" name="idx" value="<?php echo $idedit;?>" />
                <?php
                }
                ?>                
                <input class="button" type="submit" name="proses" value="Cancel" />
                
            </th></tr>
        </tfoot>
        <tbody>
            <tr>
                <td> Nama </td>
                <td>
                    <input type="text" value="<?php echo $row['nama_barang'];?>" name="nama_barang" size="30" />
                </td>
            <tr>
                <td> Harga </td>
                <td>
                    <input type="text" value="<?php echo $row['harga'];?>" name="harga" size="30" />
                </td>
            </tr>
            
            <tr>
                <td> Gambar </td>
                <td>
                    <input type="text" value="<?php echo $row['picture'];?>" name="picture" size="30" />      
                </td>
            </tr>
            <tr>
                <td> Stok </td>
                <td>
                    <input type="text" value="<?php echo $row['stok'];?>" name="stok" size="30" />
                </td>
            </tr>
            <tr>
                <td valign="top"> Deskripsi </td>
                <td>
                     <textarea name="deskripsi" cols="30" row="7" ><?php echo $row['deskripsi'];?></textarea>
                </td>
            </tr>
              
        </tbody>
    </table>
</form>
