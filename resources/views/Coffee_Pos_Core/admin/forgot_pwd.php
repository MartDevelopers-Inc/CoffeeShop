<?php
    require_once('partials/_head.php');
?>
<body class="bg-default">
  <div class="main-content">
    <div class="header bg-gradient-primar py-7 py-lg-8">
      <div class="container">
        <div class="header-body text-center mb-7">
          <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6">
              <h1 class="text-white">iCoffee Shop Point Of Sale</h1>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <div class="container mt--8 pb-5">
      <div class="row justify-content-center">
        <div class="col-lg-5 col-md-7">
          <div class="card bg-secondary shadow border-0">
            <div class="card-body px-lg-5 py-lg-5">

              <form method="post" role="form">
                <div class="form-group mb-3">
                  <div class="input-group input-group-alternative">
                    <div class="input-group-prepend">
                      <span class="input-group-text"><i class="ni ni-email-83"></i></span>
                    </div>
                    <input class="form-control" required name="reset_email" placeholder="Email" type="email">
                  </div>
                </div>
                <div class="text-center">
                  <button type="button" name="reset_pwd" class="btn btn-primary my-4">Reset Password</button>
                </div>
              </form>

            </div>
          </div>
          <div class="row mt-3">
            <div class="col-6">
              <a href="index.php" class="text-light"><small>Log In?</small></a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- Footer -->
  <?php
    require_once('partials/_footer.php');
  ?>
  <!-- Argon Scripts -->
  <?php
    require_once('partials/_scripts.php');
  ?>
</body>

</html>