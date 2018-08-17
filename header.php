<?php 

include 'include/connect.php';
$sql="select * from assets where as_id=3";
$query=mysqli_query($conn, $sql);
$row=mysqli_fetch_array($query);
?>
<!DOCTYPE html>
<html>
<head>
	<title><?php echo $row['title']; ?></title>
	<link rel="shortcut icon" type="image/png" href="image/<?php echo $row['logo']; ?>">
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>
	<?php session_start(); ?>
	<div class="container">
		<div class="row">
			<div class="col-12" style="background: url(image/<?php echo $row['banner']; ?>); background-size: cover; margin: 0;padding: 0; background-repeat: no-repeat;">
				<div class="text-white px-5 py-3" style="background: rgba(0,0,0,.5);" >
					<h1 class="display-4 font-weight-bold"><a href="index.php" style="text-decoration: none; color: #fff;"><?php echo $row['name']; ?></a></h1>
					<p><?php echo $row['sub_text']; ?></p>
				</div>
			</div>
		</div>

	</div>