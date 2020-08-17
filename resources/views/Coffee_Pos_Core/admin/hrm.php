<?php
    session_start();
    include('config/config.php');
    include('config/checklogin.php');
    check_login();
    //Delete Staff
    if(isset($_GET['delete']))
    {
          $id=intval($_GET['delete']);
          $adn="DELETE FROM  coffee_shop_staff  WHERE  staff_id = ?";
          $stmt= $mysqli->prepare($adn);
          $stmt->bind_param('i',$id);
          $stmt->execute();
          $stmt->close();	 
         if($stmt)
         {
             $success = "Deleted" && header("refresh:1; url=hrm.php");
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
              <h3 class="mb-0">Card tables</h3>
            </div>
            <div class="table-responsive">
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Staff Number</th>
                    <th scope="col">Staff Name</th>
                    <th scope="col">Staff Email</th>
                    <th scope="col">Manage Staff</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                        $ret = "SELECT * FROM  coffee_shop_staff "; 
                        $stmt = $mysqli->prepare($ret) ;
                        $stmt->execute() ;
                        $res = $stmt->get_result();
                        while($staff = $res->fetch_object())
                        {
                    ?>
                        <tr>
                            <td><?php echo $staff->staff_number;?></td>    
                            <td><?php echo $staff->staff_name;?></td>    
                            <td><?php echo $staff->staff_email;?></td>   
                            <td>
                                <a href="hrm.php?delete=<?php echo $staff->staff_id;?>">
                                    <span class="badge badge-danger">
                                        Delete
                                    </span>
                                </a>
                            </td>                 
                        </tr>
                    <?php }?>
                </tbody>
              </table>
            </div>

            <div class="card-footer py-4">
              <nav aria-label="...">
                <ul class="pagination justify-content-end mb-0">
                  <li class="page-item disabled">
                    <a class="page-link" href="#" tabindex="-1">
                      <i class="fas fa-angle-left"></i>
                      <span class="sr-only">Previous</span>
                    </a>
                  </li>
                  <li class="page-item active">
                    <a class="page-link" href="#">1</a>
                  </li>
                  <li class="page-item">
                    <a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
                  </li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item">
                    <a class="page-link" href="#">
                      <i class="fas fa-angle-right"></i>
                      <span class="sr-only">Next</span>
                    </a>
                  </li>
                </ul>
              </nav>
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