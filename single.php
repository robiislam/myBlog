 	<?php include 'header.php'; ?> 
	<?php include 'nav.php'; ?>
	<div class="container">

		<div class="row">
			<div class="col-md-9">
				<?php 
				include 'include/connect.php';
				if (isset($_GET['id'])) {
					$id = $_GET['id'];
					$sql2 = "select * from post where post_id='$id'";
					$query = mysqli_query($conn, $sql2);
					$row = mysqli_fetch_array($query);
				}
				?>
				<h1><?php echo $row['title']; ?></h1>
				<small>Written By <a href="#"><?php echo $row['author']; ?></a> at <?php echo date('F j, Y, g:i a', strtotime($row['date'])); ?></small>
				<img src="image/<?php echo $row['image']; ?>" class="m-2 w-100 img-fluid mx-auto d-block img-thumbnail" style="max-height: 300px;">
				<p class="mx-3"><?php echo $row['body']; ?></p>

				<hr>
				<!-- view comment -->
				<h2 class="m-3">Comments</h2>
				<?php 

				$sql1="select * from comment where post_id=$id and status='1'";
				$query1=mysqli_query($conn,$sql1);
				foreach ($query1 as $key) {
					
				?>
				<div class="jumbotron p-2 m-1" >
					<img src="image/profile.jpg" class="float-left mr-3" style="height: 50px; width: 50px;">
					<small>By <a href="#"><strong><?php echo $key['name']; ?></strong></a> at <?php echo date('F j, Y, g:i a', strtotime($key['time'])); ?></small>
					<p><?php echo $key['com_body']; ?></p>
				</div>

				<?php } ?>
				<!-- insert comment -->
				
				<h2 class="p-3">Put a Comment Here</h2>
				<?php 
				if (isset($_POST['submit'])) {
					$post_id = $_POST['postid'];
					if (!$_SESSION['id']) {
						$name = $_POST['name'];
					} else {
						$name= $_SESSION['name'];
					}
					$comment = $_POST['comment'];
					$sql = "insert into comment (name,com_body,post_id) values ('$name','$comment','$post_id')";
					mysqli_query($conn, $sql);
            		header("location:single.php?id=$id");
					
				}
				?>	


				<form action="" method="post" autocomplete="off">
					<input type="hidden" name="postid" value="<?php echo $row['post_id']; ?>">
					<?php 

					if (isset($_SESSION['id'])) {
						
					} else{
						echo '
						<div class="form-group">
							<input type="text" name="name" class="form-control" placeholder="Enter Your Name" autocomplete="off">
						</div>
						';
					}
					?>
					<div class="form-group">
						<textarea class="form-control" placeholder="Enter Your Comment Here" rows="5" name="comment" autocomplete="off"></textarea>
					</div>
					<input type="submit" name="submit" value="Comment" class="btn btn-primary btn-sm w-100">
				</form>

				<hr>
				
			</div>
			<!-- Writer section -->
			<div class="col-md-3">
				<h5 class="back text-white mb-4">Writer</h5>
				<img src="image/profile.jpg" class="mx-auto d-block" style="height: 100px; width: 100px; border-radius: 50%;">
				<h4 class="mt-3 text-center"><?php echo $row['author']; ?></h4>
				<h5 class="back text-white">Advertise</h5>
				<?php 

				$ad_sql="select * from ad where ad_id!=1 order by ad_id desc  limit 0, 5";
				$ad_query=mysqli_query($conn, $ad_sql);
				foreach ($ad_query as $ad_row) {
				
				?>
				<img src="image/<?php echo $ad_row['ad_img'] ?>" class="img-fluid mb-3">

				<?php } ?>
				<?php 

				if (isset($_SESSION['id'])) {
					echo "";
				} else {
					echo '
				<h5 class="back text-white">login</h5>
				<form>
					<div class="form-group">
						<label>Email:</label>
						<input type="email" name="email" placeholder="Enter Your Email" class="form-control">
					</div>
					<div class="form-group">
						<label>Password:</label>
						<input type="password" name="pass" placeholder="Enter Your Password" class="form-control">
					</div>
					<input type="submit" name="login" value="Login" class="btn btn-primary btn-sm btn-block">
				</form>
				<small>Not A Member Yet? <a href="admin/regesterform.php"><strong>Regester</strong></a> Here</small>
				';
				}

				?>
			</div>
		</div>
	</div>
	<?php include 'footer.php'; ?>


