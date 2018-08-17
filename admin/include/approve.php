<?php 


include 'connect.php';
if (isset($_GET['id'])) {
	$id=$_GET['id'];
	$sql="update usertable set status='1' where id='$id' ";
	$query = mysqli_query($conn,$sql);
	header('location:../users.php');

}
if (isset($_GET['cid'])) {
	$cid=$_GET['cid'];
	$sql="update comment set status='1' where comment_id='$cid' ";
	$query = mysqli_query($conn,$sql);
	header('location:../comments.php');

}
if (isset($_GET['catid'])) {
	$catid=$_GET['catid'];
	$sql="update post_catagory set status='1' where catagory_id='$catid' ";
	$query = mysqli_query($conn,$sql);
	header('location:../index.php');

}
?>