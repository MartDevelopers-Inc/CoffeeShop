<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="MartDevelopers Inc">
  <title>iCoffee Shop Point Of Sale </title>
  <!-- Favicon -->
  <link href="assets/img/brand/favicon.png" rel="icon" type="image/png">
  <!-- Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
  <!-- Icons -->
  <link href="assets/vendor/nucleo/css/nucleo.css" rel="stylesheet">
  <link href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" rel="stylesheet">
  <!-- Argon CSS -->
  <link type="text/css" href="assets/css/argon.css?v=1.0.0" rel="stylesheet">
  <script src="assets/js/swal.js"></script>
    <!--Load Swal-->
    <?php if(isset($success)) {?>
    <!--This code for injecting success alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Success","<?php echo $success;?>","success");
                    },
                        100);
                    
        </script>

    <?php } ?>
    <?php if(isset($err)) {?>
    <!--This code for injecting error alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Failed","<?php echo $err;?>","error");
                    },
                        100);
        </script>

    <?php } ?>
    <?php if(isset($info)) {?>
    <!--This code for injecting info alert-->
        <script>
                    setTimeout(function () 
                    { 
                        swal("Success","<?php echo $info;?>","info");
                    },
                        100);
        </script>

    <?php } ?>
    <script>
        function getCustomer(val)
        {
            $.ajax({

            type: "POST",
            url: "customer_ajax.php",
            data: 'custName='+val,
            success: function(data)
            {
            //alert(data);
            $('#customerID').val(data);
            }
            });
        
        }
    </script>
</head>