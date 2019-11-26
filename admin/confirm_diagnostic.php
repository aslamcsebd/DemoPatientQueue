<?php

include ('db_connect.php');

$id=$_GET['id'];

$update=mysqli_query($con,"UPDATE diagonostic SET mode='1'  WHERE diago_id='$id'");



if($update)
{
	
	echo "<script>alert('Done!')</script>";
	echo "<script>window.open('view_diagnostic.php','_self')</script>";
}

else
{
	echo "<script>alert('Failed!')</script>";
	echo "<script>window.open('view_diagnostic.php','_self')</script>";
}


?>