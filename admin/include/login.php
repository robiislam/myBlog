<?php 

session_start();

include_once 'connect.php';
if (isset($_POST['login'])) {
	$email=mysqli_real_escape_string($conn, $_POST['email']);
	$password=mysqli_real_escape_string($conn, $_POST['password']);
	if (empty($email) || empty($password)) {
		header('location:../loginform.php?err=All Field Required');
		exit();
	} else {
		$sql="select * from usertable where email = '$email' and status=1";
		$query=mysqli_query($conn,$sql);
		$resultcheck=mysqli_num_rows($query);
		if ($resultcheck < 1) {
			header('location:../loginform.php?err=The email is not regestered');
			exit();
		} else {
			if ($row=mysqli_fetch_assoc($query)) {
				$pass= md5($password);
				if ($pass!==$row['pass']) {
					header('location:../loginform.php?err=Incorrect Password');
					exit();
				} else{
					$_SESSION['id']=$row['id'];
					$_SESSION['name']=$row['name'];
					$_SESSION['email']=$row['email'];
					header('location:../index.php');
					exit();
				}
			}
		}
	}
}
?>
