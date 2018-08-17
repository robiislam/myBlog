<?php 


include 'connect.php';
if (isset($_POST['submit'])) {
	$post_id = $_POST['postid'];
	$name = $_POST['name'];
	$comment = $_POST['comment'];
	$sql = "insert into comment (name,com_body,post_id) values ('$name','$comment','$post_id')";
	$query = mysqli_query($conn,$sql);
	header('location:single.php');
}
?>