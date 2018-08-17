<?php 
include 'connect.php';

$as_sql="select * from assets where as_id=3";
$as_query=mysqli_query($conn,$as_sql);
$asset=mysqli_fetch_array($as_query);

$old_aslogo=$asset['logo'];
$old_asbanner=$asset['banner'];

if (isset($_POST['info-save'])) {
	$asname=$_POST['asname'];
	$astext=$_POST['astext'];
	$astitle=$_POST['astitle'];
	$asemail=$_POST['asemail'];
	$ppp=$_POST['ppp'];
	if ($_FILES['aslogo']['name']!="") {
		$aslogo=$_FILES['aslogo']['name'];
		$target1="../image/".basename($aslogo);
		unlink("../image/$old_aslogo");
		move_uploaded_file($_FILES['aslogo']['tmp_name'], $target1);
	} else {
		$aslogo=$old_aslogo;
	}
	if ($_FILES['asbanner']['name']!="") {
		$asbanner=$_FILES['asbanner']['name'];
		$target2="../image/".basename($asbanner);
		unlink("../image/$old_asbanner");
		move_uploaded_file($_FILES['asbanner']['tmp_name'], $target2);
	} else {
		$asbanner=$old_aslogo;
	}
	$info_sql="update assets set name='$asname', sub_text='$astext', title='$astitle', email='$asemail', post_page='$ppp', logo='$aslogo', banner='$asbanner' where as_id=3";
	$info_query=mysqli_query($conn, $info_sql);
	header('location:../index.php');
	
}


if (isset($_POST['social-save'])) {
	$facebook=$_POST['facebook'];
	$youtube=$_POST['astext'];
	$twitter=$_POST['twitter'];
	$google=$_POST['google'];
	$social_sql="update assets set facebook='$facebook', twitter='$twitter', youtube='$youtube', google='$google' where as_id=3";
	$social_query=mysqli_query($conn, $social_sql);
	if ($social_query) {
		header('location:../index.php');
	}
}
?>