<?php 

include_once 'connect.php';
if (isset($_POST['submit'])) {
	$name=mysqli_real_escape_string($conn, $_POST['name']);
	$email=mysqli_real_escape_string($conn, $_POST['email']);
	$pass1=mysqli_real_escape_string($conn, $_POST['pass1']);
	$pass2=mysqli_real_escape_string($conn, $_POST['pass2']);
	if (empty($name) || empty($email) || empty($pass1) || empty($pass2)) {
		header('location:../regesterform.php?err=All Field Required');
		exit();
	} else {
		if (!preg_match("/^[a-z A-Z]*$/", $name)) {
			header('location:../regesterform.php?err=Inseert a valid name');
			exit();
		} else {
			if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
				header('location:../regesterform.php?err=Inseert a valid email');
				exit();
			} else {
				$sql="select * from usertable where email=$email";
				$query=mysqli_query($conn,$sql);
				$result=mysqli_num_rows($query);
				if ($result > 0) {
					header('location:../regesterform.php?err=It looks like You are a regestered user');
					exit();
				} else {
					if ($pass1 !== $pass2) {
						header('location:../regesterform.php?err=Two password does not match');
						exit();
					} else {
						$pass= md5($pass1);
						$insert="insert into usertable (name,email,pass) values ('$name','$email','$pass')";
						mysqli_query($conn,$insert);
						header('location:../index.php');
						exit();
					}
				}
				
			}
		}
	}
} else {
	header('location:../regesterform.php');
	exit();
}
?>