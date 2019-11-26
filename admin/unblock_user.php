<?php

include ('db_connect.php');

$id=$_GET['id'];

$update=mysqli_query($con,"UPDATE users SET mode=0 WHERE id='$id'");

if($update)
{
	echo "<script>alert('Unblocked Sucessfull!')</script>";
	echo "<script>window.open('view_all_user.php','_self')</script>";
}

else
{
	echo "<script>alert('Failed!')</script>";
	echo "<script>window.open('view_all_user.php','_self')</script>";
}


?>