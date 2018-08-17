<?php 

session_start();
if (isset($_POST['submit'])) {
	session_unset();
	session_destroy();
	header('location:../loginform.php');
}
?>