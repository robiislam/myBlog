<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>
<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
  <h3>Advertise Section</h3>
</nav> 

<?php 

include 'include/connect.php';
$l_sql="select * from ad where ad_id=1";
$l_query=mysqli_query($conn, $l_sql);
$l_row=mysqli_fetch_array($l_query);
?>


<form action="include/ad.php" method="post" enctype="multipart/form-data">
	<div class="form-group grid">
		<label>Left Sidebar Ad</label>
		<div>
			<input type="file" name="leftad" class="form-control mb-3">
			<img src="../image/<?php echo $l_row['ad_img'] ?>" style="height: 100px; width: 100px; ">
		</div>
	</div>
	<input type="submit" name="update" class="btn btn-primary float-right mr-5" value="Update">
</form>

<?php 

$r_sql="select * from ad where ad_id!=1";
$r_query=mysqli_query($conn, $r_sql);
?>

<!-- right ad  -->




<form action="include/ad.php" method="post" enctype="multipart/form-data" style="clear: both;">
	<div class="form-group grid">
		<label>Right Sidebar Ad</label>
		<div>
			<input type="file" name="rightad" class="form-control mb-3">
			<?php 
			foreach ($r_query as $r_row) {
			?>
			<img src="../image/<?php echo $r_row['ad_img'] ?>" style="height: 100px; width: 100px; float: left; margin-right: 10px;">
		<?php } ?>
		</div>
	</div>
	<input type="submit" name="add" class="btn btn-success float-right mr-5" value="Add">
</form>

<?php include 'footer.php'; ?>