			<div class="col-lg-3 col-md-3">
				<?php 

				if (isset($_SESSION['id'])) {
					echo "";
				} else {
					echo '
				<h5 class="back text-white">Log In</h5>
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
				
				
				<h5 class="back text-white">Recent</h5>
				<?php 

		    	include 'include/connect.php';
				$post_limit=5;

				$recent_sql="SELECT * FROM post ORDER BY date DESC limit 0,".$post_limit;
				$recent_query=mysqli_query($conn, $recent_sql);
				foreach ($recent_query as $key) {
					
				?>
				<div>
					<img src="image/<?php echo $key['image'] ?>" style="height: 50px; width: 50px;" class="float-left img-thumbnail mr-2"> 
					<a href="single.php?id=<?php echo $key['post_id'] ?>"><h5 style="margin: 0px; padding: 0px;"><?php echo $key['title'] ?></h5></a>

					<small><?php echo date('l, g:i a', strtotime($key['date'])) ?></small>
					<hr style="margin: 5px; padding: 0;">
				</div>

				<?php } ?>
				
				
				<h5 class="back text-white">Catagory</h5>
				<ul>
				<?php 
		    		$sql = "select * from post_catagory";
		    		$query = mysqli_query($conn,$sql);
		    		foreach ($query as $row) {	    			
		    	?>
			      	<li><a href="catagory.php?cat_id=<?php echo $row['catagory_id']; ?>" href="#"><?php echo $row['catagory_name']; ?></a></li> 
		      	<?php } ?>
				</ul>
				<h5 class="back text-white">Advertise</h5>
				<?php 

				$ad_sql="select * from ad where ad_id!=1 order by ad_id desc  limit 0, 5";
				$ad_query=mysqli_query($conn, $ad_sql);
				foreach ($ad_query as $ad_row) {
				
				?>
				<img src="image/<?php echo $ad_row['ad_img'] ?>" class="img-fluid mb-3">

				<?php } ?>
			</div>
		</div>
	</div>