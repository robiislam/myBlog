<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>
	<?php 
	include 'include/connect.php';
	if (isset($_GET['cid'])) {
		$cid=$_GET['cid'];
		$sql= "select * from comment where comment_id=$cid";
		$query = mysqli_query($conn,$sql);
		$row=mysqli_fetch_array($query);
	}
	if (isset($_POST['update'])) {
		$cid=$_POST['cid'];
		$name=$_POST['name'];
		$comment=$_POST['comment'];
		$sql = "update comment set name='$name', com_body='$comment' where comment_id='$cid' ";
		$query = mysqli_query($conn,$sql);
		header('location:comments.php');
	}
	?>
	<form action="" method="post">
		<input type="hidden" name="cid" value="<?php echo $row['comment_id'] ?>">
		<div class="form-group">
			<input type="text" name="name" class="form-control" value="<?php echo $row['name'] ?>">
		</div>
		<div class="form-group">
			<textarea class="form-control" rows="5" name="comment"><?php echo $row['com_body']; ?></textarea>
		</div>
		<input type="submit" name="update" value="Update Comment" class="btn btn-primary btn-sm w-100">
	</form>
<?php include 'footer.php'; ?>