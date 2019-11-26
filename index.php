<?php
session_start();
if (isset($_SESSION['email'])) {
    header("location:admin/dashboard.php");

} else {
    echo "";
}


$submit = "";

$status = "OK";
$msg = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {

    $email = $_POST['email'];
    $password = $_POST['password'];


    if (empty($email)) {
        $msg .= "<center><font  size='4px' face='Verdana' size='1' color='red'>Please Enter Your Email. </font></center>";


        $status = "NOTOK";

    }


    if (empty($password)) {
        $msg .= "<center><font  size='4px' face='Verdana' size='1' color='red'>Please Enter Your password.";

        $status = "NOTOK";
    }

    if ($status == "OK") {

        include('db_connect.php');


//   include('db_connect.php');

        $result = mysqli_query($con, "SELECT * FROM admin WHERE email='$email' and password='$password'");


        $count = mysqli_num_rows($result);

        if ($count == 1) {

            $row = mysqli_fetch_array($result);

            $_SESSION['email'] = $row['email'];
            ob_start();

            header("location:admin/dashboard.php");
        } else {


            $msg = "<center><font  size='4px' face='Verdana' size='1' color='red'>Wrong ID or Password !!!.
";

            echo "<div class='alert-danger' align='center'>" . $msg . "</div";

        }
    } else {
        echo "<div class='alert-danger' align='center'>" . $msg . "</div";
    }

}


?>


<!DOCTYPE html>
<!-- saved from url=(0068)http://lazy-coding.com/j-forms-full/temp/registration_captcha_1.html -->
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Login</title>

    <!-- Your META here -->
    <meta content="width=device-width, initial-scale=1.0, minimum-scale=1.0" name="viewport">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="./Registration form_files/demo.css">
    <link rel="stylesheet" href="./Registration form_files/font-awesome.min.css">
    <link rel="stylesheet" href="./Registration form_files/j-forms.css">
    <link href="http://maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">

</head>
<body background="bg.jpg">
<div class="wrapper wrapper-400">

    <form action="index.php" method="post" class="j-forms" novalidate="">

        <div class="header">
            <p>Admin Panel</p>
        </div>
        <!-- end /.header -->

        <div class="content">


            <!-- start email -->
            <div class="unit">
                <div class="input">
                    <label class="icon-right" for="email">
                        <i class="fa fa-envelope-o"></i>
                    </label>
                    <input type="email" id="email" name="email" placeholder="E-mail">
                </div>
            </div>
            <!-- end email -->

            <!-- start password -->
            <div class="unit">
                <div class="input">
                    <label class="icon-right" for="password">
                        <i class="fa fa-lock"></i>
                    </label>
                    <input type="password" id="password" name="password" placeholder="Password">
                </div>
            </div>
            <!-- end password -->


        </div>
        <!-- end /.content -->

        <div class="footer">
            <button type="submit" class="primary-btn enable-view" id="enable-button">Login</button>
        </div>
        <!-- end /.footer -->

    </form>
</div>

<!-- Scripts -->
<script src="./Registration form_files/jquery.1.11.1.min.js.download"></script>

<!--[if lt IE 10]>
<script src="j-folder/js/jquery.placeholder.min.js"></script>
<![endif]-->


</body>
</html>