
<?php
session_start();
if( isset( $_SESSION['email'] ) )
     {
	 }
	else{
	 exit;
  }
   ?>
<?php include 'admin-main.php';?>
<?php 
include('inc/dbcon.php');
?>
<!DOCTYPE HTML>
<html>
<head>
<link rel="stylesheet" type="text/css" href="inc/css/structure.css">
<link rel="stylesheet" type="text/css" href="css/mystyles.css">
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/css/dt_bootstrap.css">

</head>
<body>
<section class="HomeEldoret">
<img src="img/gov.jpg"style="width:954px;height:470px">


<div class="cont">
<br>
<br>
<form action="edit.php" method="post">
                        <table cellpadding="0" cellspacing="0" border="0" class="table table-striped table-bordered" id="example">
                            
                            <thead>
                                <tr>
                                    <th>No.</th>
                                    <th>Zone Name</th>
                                    <th>Parking Lots</th>
									 <th>Attendant on Duty</th>
                                    <th>Attendant Phone</th>
                                  
                                </tr>
                            </thead>
                            <tbody>
                            <tr>
										 <td>1</td>
                                         <td>KENYATTA STREET</td>
                                         <td>18</td>
                                         <td>DENIS</td>
                                         <td>0708222536</td>
										
                            </tr>
						 <tr>
										 <td>2</td>
                                         <td>SOSSIANI </td>
                                         <td>18</td>
                                         <td>DENIS </td>
                                         <td>0743574239</td>
										
                            </tr>
                            </tbody>
                        </table>
						
</form>



</div>


</section>
<section class="Eldoret-bottom">
<p>Safe Parking, whenever you are in ELDORET</p>
</section>
</body>
</html>
