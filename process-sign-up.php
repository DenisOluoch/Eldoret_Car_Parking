<?php
	require('inc\dbcon.php');
    // If the values are posted, insert them into the database.
    if (isset($_POST['name']) && isset($_POST['email']) && isset($_POST['password']) && isset($_POST['phone'])){
        $name = $_POST['name'];
		$email = $_POST['email'];
        $password = $_POST['password'];
		 $phone = $_POST['phone'];
	//check existence
	$conn = mysqli_connect("localhost","root","","parking01") or die("connction failed!");
	$sql="SELECT * FROM users WHERE email='$email'";
	$result=mysqli_query($conn,$sql) or die("query failed!");

	// Mysql_num_row is counting table row
	$count=mysqli_num_rows($result);

	// If result matched $myusername and $mypassword, table row must be 1 row
	if($count==1){
	echo "User exists, please use log in.";
	exit;
	}
	else
	{
		$jdate=getdate();
		$status="Active";
	
		     $conn = mysqli_connect("localhost","root","","parking01") or die("connction failed!");
			$sql = "INSERT INTO 'users' ('name', 'email', 'password','phone','joindate','status') VALUES ('$name','$email', '$password',  '$phone', '$jdate', '$status')";
			$result = mysqli_query($conn,$sql) or die("query failed!");
			if($result){
			   //REDIRECT
			   header('location:success-sign-up.php');
exit;
        }
    }
	}
    ?>