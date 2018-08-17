<?php 


include 'connect.php';
$name= "";
$email= "";
$password= "";
if (isset($_POST['add'])) {
	$name = $_POST['name'];
	$email = $_POST['email'];
	$password = md5($_POST['password']);
	$sql = "insert into usertable (name,email,pass) values ('$name','$email','$password')";
	mysqli_query($conn,$sql);
	header('location:../adduser.php');
}
?>