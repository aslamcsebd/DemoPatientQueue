<?php

include ('db_connect.php');

$id=$_GET['id'];

$update=mysqli_query($con,"UPDATE doctor SET d_mode='1'  WHERE d_id='$id'");



if($update)
{
	
	echo "<script>alert('Done!')</script>";
	echo "<script>window.open('view_doctor.php','_self')</script>";
}

else
{
	echo "<script>alert('Failed!')</script>";
	echo "<script>window.open('view_doctor.php','_self')</script>";
}


?>