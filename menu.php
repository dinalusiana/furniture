<div id="templatemo_menubar">
    <div id="top_nav" class="ddsmoothmenu">
        <ul>
            
        <!-- sesion start -->           
        <?php 
        if(!empty($_SESSION['MEMBER'])){
         ?>
            <li><a href="index.php?hal=newproduct">Form New Product</a></li>
            <?php
            foreach ($ar_menu as $k => $v) {
            echo '<li><a href="index.php?hal='.$k.'">'.$v.'</a></li>';
            }
            ?>
            <li><a href="index.php?hal=datatransaction">Transaction</a></li>
            <?php
        } // sesion finish
        else{
            foreach ($ar_menu as $k => $v) {
            echo '<li><a href="index.php?hal='.$k.'">'.$v.'</a></li>';
            } 
            ?>
            <li><a href="index.php?hal=transaction">Transaction</a></li>
            <?php
        }
        ?>

        </ul>
        <br style="clear: left" />
    </div> <!-- end of ddsmoothmenu -->
    <div id="templatemo_search">
        <form action="#" method="GET">
          <input type="text" value="search" name="keyword" id="keyword" title="keyword" onfocus="this.value=''" onblur="clearText(this)" class="txt_field" />
          <input type="submit" name="search" value="" alt="Search" id="searchbutton" title="Search" class="sub_btn"  />
          <input type="hidden" name="hal" value="products" />
        </form>
    </div>
</div> <!-- END of templatemo_menubar -->