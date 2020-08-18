<?php
    session_start();
    include('config/config.php');
    include('config/checklogin.php');
    check_login();
    //Delete Staff
    if(isset($_GET['delete']))
    {
          $id=intval($_GET['delete']);
          $adn="DELETE FROM  coffee_shop_products  WHERE  prod_id = ?";
          $stmt= $mysqli->prepare($adn);
          $stmt->bind_param('s',$id);
          $stmt->execute();
          $stmt->close();	 
         if($stmt)
         {
             $success = "Deleted" && header("refresh:1; url=customes.php");
         }
         else
         {
             $err = "Try Again Later";
         }
    }
    require_once('partials/_head.php');
?>
<body>
  <!-- Sidenav -->
  <?php
    require_once('partials/_sidebar.php');
  ?>
  <!-- Main content -->
  <div class="main-content">
    <!-- Top navbar -->
    <?php
        require_once('partials/_topnav.php');
    ?>
    <!-- Header -->
    <div style="background-image: url(assets/img/theme/profile-cover.jpg); background-size: cover;" class="header  pb-8 pt-5 pt-md-8">
      <div class="container-fluid">
        <div class="header-body">
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <!-- Table -->
      <div class="row">
        <div class="col">
          <div class="card shadow">
            <div class="card-header border-0">
              <a href="add_customer.php" class="btn btn-outline-success">
                  <i class="fas fa-tag"></i>
                  Add New Product
                </a>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Product Image</th>
                    <th scope="col">Product Code</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Price</th>
                    <th scope="col">Manage Product</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                        $ret = "SELECT * FROM  coffee_shop_products "; 
                        $stmt = $mysqli->prepare($ret) ;
                        $stmt->execute() ;
                        $res = $stmt->get_result();
                        while($prod = $res->fetch_object())
                        {
                    ?>
                        <tr>
                            <td>
                                <?php
                                if($prod->prod_img)
                                {
                                    echo "<img src='assets/img/products/$prod->prod_img' class='img-thumbnail'>";
                                }
                                else
                                {
                                    echo "<img src='assets/img/products/default.png' class='img-thumbnail'>";
                                }

                                ?>
                            </td>
                            <td><?php echo $prod->prod_code;?></td>    
                            <td><?php echo $prod->prod_name;?></td>    
                            <td>Ksh <?php echo $prod->prod_price;?></td>   
                            <td>
                                <a href="products.php?delete=<?php echo $prod->prod_id;?>">
                                    <span class="badge badge-danger">
                                        <i class="fas fa-trash"></i>  
                                        Delete
                                    </span>
                                </a>

                                <a href="update_product.php?update=<?php echo $prod->prod_id;?>">
                                    <span class="badge badge-success">
                                      <i class ="fas fa-edit"></i>    
                                      Update
                                    </span>
                                </a>
                            </td>                 
                        </tr>
                    <?php }?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
      <!-- Footer -->
      <?php
        require_once('partials/_footer.php');
      ?>
    </div>
  </div>
  <!-- Argon Scripts -->
  <?php
    require_once('partials/_scripts.php');
  ?>
</body>

</html>