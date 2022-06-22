<?php
	require('inc\dbcon.php');
	session_start();
     $email = $_SESSION["email"];
	 $model = $_SESSION["model"];
	  $vehicle = $_SESSION["vehicle"];
	  $status="RESERVED";
	  $plateno = $_SESSION["plateno"];
	  $plot = $_SESSION["plot"];
	  $account = $_SESSION["account"];
	  $street = $_SESSION["street"];
	    $from = $_SESSION["from"];
		 $to = $_SESSION["to"];
		    $charge = "150";
			
			/*CHECK IF RESERVED */
$conn = mysqli_connect("localhost","root","","parking01") or die("connction failed!");			
$sql="SELECT * FROM zones WHERE street='$street' and plot='$plot'";
$result=mysqli_query($conn,$sql) or die("query failed!");


// Mysql_num_row is counting table row
$count=mysqli_num_rows($result);

// If

if($count==1){
 header('location:error-book.php');
}
else
{
	    $conn = mysqli_connect("localhost","root","","parking01") or die("connction failed!");
        $query = "INSERT INTO `zones` (status, email, model, vehicle,street,plot,platenumber,account,charge,d1,d2) VALUES ('$status', '$email', '$model', '$vehicle' , '$street', '$plot', '$plateno', '$account','$charge','$from','$to')";
        $result=mysqli_query($conn,$sql) or die("query failed!");
		$var = $_SESSION["from"];
$date = str_replace('/', '.', $var);
echo date('Y.m.d', strtotime($date));
		if($result){
           //REDIRECT
		   header('location:success-book.php');
		   
exit;
        }
}
    ?>