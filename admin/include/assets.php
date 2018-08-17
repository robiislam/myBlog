<?php 


include 'connect.php';
$sql = "select * from assets";
$query = mysqli_query($conn,$sql);
foreach ($query as $assets) {

}


?>