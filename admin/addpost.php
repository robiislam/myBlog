<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>
<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
  <h3>User Table</h3>
  <a href="post.php" class=" mr-5 btn btn-success btn-sm"> <i class="fas fa-plus-circle"> </i> Back to All posts</a>
</nav> 

<?php 

include_once 'include/connect.php';
if (isset($_POST['submit'])) {
	
	$t=$_POST['t'];
	$body = $_POST['body'];
	$catagory = $_POST['catagory'];
	$image=$_FILES['image']['name'];
	$target="../image/".basename($image);
	move_uploaded_file($_FILES['image']['tmp_name'], $target);
	$author=$_SESSION['name'];
	$tags = $_POST['tags'];
	$sql = "insert into post (title,body,catagory_id,image,author,tags) values ('$t','$body','$catagory','$image','$author','$tags')";
	$query=mysqli_query($conn, $sql);
	header('location:post.php');
	// if ($query) {
	// 	echo "success";
	// } else {
	// 	echo "failed";
	// }
}


?>
<form action="" method="post" enctype="multipart/form-data">
	
	<div class="form-group grid">
		<label>Title</label>
		<input type="text" name="t" class="form-control">
	</div>
	<div class="form-group grid">
		<label>Body</label>
		<textarea  name="body" rows="7"></textarea>
	</div>
	<div class="form-group grid">
		<label>Image</label>
		<input type="file" class="form-control-file dropify" name="image" >
	</div>
	<div class="form-group grid">
		<label>Catagory</label>
		<select class="form-control" name="catagory">
			<?php 

			$sql = "select * from post_catagory";
			$query = mysqli_query($conn,$sql);
			foreach ($query as $row) {
			?>
			<option value="<?php echo $row['catagory_id'] ?>"><?php echo $row['catagory_name']; ?></option>
			<?php } ?>
		</select>
	</div>
	<div class="form-group grid">
		<label>Tag</label>
		<input type="text" name="tags" class="form-control">
	</div>
	<div class="text-center">
		<input type="submit" name="submit" value="ADD" class="btn btn-outline-primary btn-sm w-25">
		<input type="reset" name="reset" value="Reset" class="btn btn-outline-danger btn-sm w-25">
	</div>

</form>

<?php include 'footer.php'; ?>