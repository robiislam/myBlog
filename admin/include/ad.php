<?php 

include 'connect.php';

$l_sql="select * from ad where ad_id=1";
$l_query=mysqli_query($conn, $l_sql);
$l_row=mysqli_fetch_array($l_query);

if (isset($_POST['update'])) {
	$old_image=$l_row['ad_img'];
	if ($_FILES['leftad']['name'] && $_FILES['leftad']['name']!="") {
		$limage=$_FILES['leftad']['name'];
		$ltarget="../../image/".basename($limage);
		unlink("../../image/$old_image");
		move_uploaded_file($_FILES['leftad']['tmp_name'], $ltarget);
	} else {
		$limage=$old_image;
	}
	$lsql="update ad set ad_img='$limage' where ad_id=1";
	$lquery=mysqli_query($conn, $lsql);
	header('location:../advertise.php');
}
if (isset($_POST['add'])) {
	$rimage=$_FILES['rightad']['name'];
	$rtarget="../../image/".basename($rimage);
	move_uploaded_file($_FILES['rightad']['tmp_name'], $rtarget);
	$rsql="insert into ad (ad_img) values ('$rimage')";
	$rquery=mysqli_query($conn, $rsql);
	header('location:../advertise.php');
}
?>