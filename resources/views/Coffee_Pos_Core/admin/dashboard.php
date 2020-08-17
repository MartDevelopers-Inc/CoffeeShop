<?php
  session_start();
  include('config/config.php');
  include('config/checklogin.php');
  check_login();
  require_once('partials/_head.php');
  require_once('partials/_analytics.php');
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
    <span class="mask bg-gradient-default opacity-8"></span>
      <div class="container-fluid">
        <div class="header-body">
          <!-- Card stats -->
          <div class="row">
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Customers</h5>
                      <span class="h2 font-weight-bold mb-0"><?php echo $customers;?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-danger text-white rounded-circle shadow">
                        <i class="fas fa-users"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Orders</h5>
                      <span class="h2 font-weight-bold mb-0"><?php echo $orders;?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-warning text-white rounded-circle shadow">
                        <i class="fas fa-shopping-cart"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Products</h5>
                      <span class="h2 font-weight-bold mb-0"><?php echo $products;?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-yellow text-white rounded-circle shadow">
                        <i class="fas fa-coffee"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-xl-3 col-lg-6">
              <div class="card card-stats mb-4 mb-xl-0">
                <div class="card-body">
                  <div class="row">
                    <div class="col">
                      <h5 class="card-title text-uppercase text-muted mb-0">Sales</h5>
                      <span class="h2 font-weight-bold mb-0">Ksh <?php echo $sales;?></span>
                    </div>
                    <div class="col-auto">
                      <div class="icon icon-shape bg-info text-white rounded-circle shadow">
                        <i class="fas fa-wallet"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container-fluid mt--7">
      <div class="row mt-5">
        <div class="col-xl-7 mb-5 mb-xl-0">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">Recent Orders</h3>
                </div>
                <div class="col text-right">
                  <a href="orders.php" class="btn btn-sm btn-primary">See all</a>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Code</th>
                    <th scope="col">Customer</th>
                    <th scope="col">Product</th>
                    <th scope="col">Price</th>
                    <th scope="col">Created At</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                    $ret = "SELECT * FROM  coffee_shop_orders "; 
                    $stmt = $mysqli->prepare($ret) ;
                    $stmt->execute() ;
                    $res = $stmt->get_result();
                    while($order = $res->fetch_object())
                    {
                  ?>
                    <tr>
                      <th scope="row"><?php echo $order->order_code;?></th>
                      <td><?php echo $order->customer_name;?></td>
                      <td><?php echo $order->prod_name;?></td>
                      <td><?php echo $order->prod_price;?></td>
                      <td><?php echo $order->created_at;?></td>
                    </tr>
                  <?php }?>
                </tbody>
              </table>
            </div>
          </div>
        </div>
        <div class="col-xl-5">
          <div class="card shadow">
            <div class="card-header border-0">
              <div class="row align-items-center">
                <div class="col">
                  <h3 class="mb-0">Recent Payments</h3>
                </div>
                <div class="col text-right">
                  <a href="payments.php" class="btn btn-sm btn-primary">See all</a>
                </div>
              </div>
            </div>
            <div class="table-responsive">
              <!-- Projects table -->
              <table class="table align-items-center table-flush">
                <thead class="thead-light">
                  <tr>
                    <th scope="col">Code</th>
                    <th scope="col">Amount</th>
                    <th scope="col">Order Code</th>
                  </tr>
                </thead>
                <tbody>
                  <?php
                      $ret = "SELECT * FROM  coffee_shop_payments "; 
                      $stmt = $mysqli->prepare($ret) ;
                      $stmt->execute() ;
                      $res = $stmt->get_result();
                      while($payment = $res->fetch_object())
                      {
                  ?>
                    <tr>
                      <th scope="row">
                        <?php echo $payment->pay_code;?>
                      </th>
                      <td>
                        <?php echo $payment->pay_amt;?>
                      </td>
                      <td>
                        <?php echo $payment->order_id;?>
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
      <?php require_once('partials/_footer.php');?>
    </div>
  </div>
  <!-- Argon Scripts -->
<?php
    require_once('partials/_scripts.php');
?>
</body>

</html>