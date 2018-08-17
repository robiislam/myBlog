<div class="container">
		<div class="row">
			<div class="col-lg-3 d-none d-lg-block d-xl-block">
				<h5 class="back text-white">Social Links</h5>
				<?php 

				include 'include/connect.php';
				$sql="select * from assets where as_id=3";
				$query=mysqli_query($conn, $sql);
				$row=mysqli_fetch_array($query);
				?>
				<div class="social">
					<a href="<?php echo $row['facebook'] ?>"><img src="image/facebook.png" style="width: 57px;"></a>
					<a href="<?php echo $row['twitter'] ?>"><img src="image/twitter.png" style="width: 57px;"></a>
					<a href="<?php echo $row['youtube'] ?>"><img src="image/youtube.png" style="width: 57px;"></a>
					<a href="<?php echo $row['google'] ?>"><img src="image/google-plus.png" style="width: 57px;"></a>
				</div>
				<h5 class="back text-white">Advertise</h5>
				<?php 

				$ad_sql="select * from ad where ad_id=1";
				$ad_query=mysqli_query($conn, $ad_sql);
				$ad_row=mysqli_fetch_array($ad_query);
				?>
				<img src="image/<?php echo $ad_row['ad_img'] ?>" class="img-fluid" style="max-width: 250px;">
				<h5 class="back text-white">Search Box</h5>
				<form action="search.php" method="post">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="What Are U Searching?">
					</div>
					<input type="submit" name="search" value="Search Here" class="btn btn-primary btn-sm btn-block">
				</form>
			</div>