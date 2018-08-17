<?php 


include 'connect.php';
if (isset($_GET['id'])) {
	$id = $_GET['id'];
	$sql = "delete from usertable where id=$id";
	$query = mysqli_query($conn,$sql);
	header('location:../users.php');

}
if (isset($_GET['cid'])) {
	$cid = $_GET['cid'];
	$sql = "delete from comment where comment_id=$cid";
	$query = mysqli_query($conn,$sql);
	header('location:../comments.php');

}
if (isset($_GET['pid'])) {
	$pid = $_GET['pid'];
	$sql = "delete from post where post_id=$pid";
	$query = mysqli_query($conn,$sql);
	header('location:../post.php');

}
if (isset($_GET['catid'])) {
	$catid = $_GET['catid'];
	$sql = "delete from post_catagory where catagory_id=$catid";
	$query = mysqli_query($conn,$sql);
	header('location:../index.php');

}
if (isset($_GET['imgid'])) {
	$imgid = $_GET['imgid'];
	$img="NULL";
	unlink("../../image/$imgid");
	$sql = "update post set image='$img' where image='$imgid'";
	$query = mysqli_query($conn,$sql);
	header('location:../media.php');
}
?>