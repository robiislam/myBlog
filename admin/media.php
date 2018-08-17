<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>


<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
  <h3>All Media</h3>
  
</nav> 
<div class="row">
<?php 
	include 'include/connect.php';
	$sql = "select image from post where image!='NULL'";
	$query = mysqli_query($conn,$sql);
	foreach ($query as $row) {
?>
	<div  class="media-image">
		<img src="../image/<?php echo $row['image']; ?>">
		<a href="include/delete.php?imgid=<?php echo $row['image']; ?>">delete</a>
	</div>
	
<?php } ?>

</div>


<?php include 'footer.php'; ?>