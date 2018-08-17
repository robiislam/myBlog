<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>
<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
  <h3>DashBoard</h3>
</nav> 

<div class="row">
	<div class="col-md-6">
		<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
		  <h3>ADD New Catagories</h3>
		</nav>

		<?php 

		include 'include/connect.php';
		if (isset($_POST['addnav'])) {
			$name=$_POST['nav'];
			$sql="insert into post_catagory (catagory_name) values ('$name') ";
			$query=mysqli_query($conn,$sql);
			header('location:index.php');
		}

		?>
		<form action="" method="post">
			<div class="form-group">
				<input type="text" name="nav" class="form-control">
			</div>
			<input type="submit" name="addnav" class="btn btn-outline-primary btn-block btn-sm">
		</form>
	</div>
	<div class="col-md-6">
		<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
		  <h3>Catagories</h3>
		</nav> 
		<table class="table-striped w-100">
			<tr>
				<th>Catagory name</th>
				<th colspan="2">Action</th>
			</tr>
			<?php 

			include 'include/connect.php';
			$sql="select * from post_catagory";
			$query= mysqli_query($conn,$sql);
			foreach ($query as $row) {
			
			?>
			<tr>
				<td><?php echo $row['catagory_name']; ?></td>
				<td>
					<?php 
					if ($row['status']=='1') { ?>				
						<a href="include/notapprove.php?catid=<?php echo $row['catagory_id'] ?>" class="text-muted"> Added</a>
					<?php } else{ ?>
					<a href="include/approve.php?catid=<?php echo $row['catagory_id'] ?>"> Add to Nav </a>
					<?php }?>
				</td>
				<td><a href="include/delete.php?catid=<?php echo $row['catagory_id'] ?>"> <i class="fas fa-trash-alt"></i></a></td>
			</tr>
			<?php } ?>
		</table>
	</div>
</div>
<?php 


$as_sql="select * from assets where as_id=3";
$as_query=mysqli_query($conn,$as_sql);
$asset=mysqli_fetch_array($as_query);
?>


<div class="row">
	<div class="col">
		<form action="include/assetup.php" method="post" enctype="multipart/form-data">
			<h1 class="display-4">Web Info</h1>
			<div class="form-group grid">
				<label>Name :</label>
				<input type="text" name="asname" class="form-control" value="<?php echo $asset['name'] ?>">
			</div>
			<div class="form-group grid">
				<label>Sub Text :</label>
				<input type="text" name="astext" class="form-control" value="<?php echo $asset['sub_text'] ?>">
			</div>
			<div class="form-group grid">
				<label>Title :</label>
				<input type="text" name="astitle" class="form-control" value="<?php echo $asset['title'] ?>">
			</div>

			<div class="form-group grid">
				<label>Contact Email :</label>
				<input type="email" name="asemail" class="form-control" value="<?php echo $asset['email'] ?>">
			</div>
			<div class="form-group grid">
				<label>Post Per Page :</label>
				<input type="number" name="ppp" class="form-control" value="<?php echo $asset['post_page'] ?>">
			</div>
			<div class="form-group grid">
				<label>Logo :</label>
				<div>
					<img src="../image/<?php echo $asset['logo'] ?>" style="height: 50px; width: 50px; margin-bottom: 10px;">
					<input type="file" name="aslogo" class="form-control">
				</div>
			</div>
			<div class="form-group grid">
				<label>Banner :</label>
				<div>
					<img src="../image/<?php echo $asset['banner'] ?>" style="height: 100px; width: 300px; margin-bottom: 10px;">
					<input type="file" name="asbanner" class="form-control">
				</div>
			</div>
			<input type="submit" name="info-save" class="btn btn-success float-right mr-5" value="Save">
		</form>
	</div>
</div>
<div class="row">
	<div class="col">
		<form action="include/assetup.php" method="post">
			<h1 class="display-4">Social</h1>
			<div class="form-group grid">
				<label>Facebook :</label>
				<input type="text" name="facebook" class="form-control" value="<?php echo $asset['facebook'] ?>">
			</div>
			<div class="form-group grid">
				<label>Twitter :</label>
				<input type="text" name="twitter" class="form-control" value="<?php echo $asset['twitter'] ?>">
			</div>
			<div class="form-group grid">
				<label>Google+ :</label>
				<input type="text" name="google" class="form-control" value="<?php echo $asset['google'] ?>">
			</div>
			<div class="form-group grid">
				<label>Youtube :</label>
				<input type="text" name="youtube" class="form-control" value="<?php echo $asset['youtube'] ?>">
			</div>
			<input type="submit" name="social-save" class="btn btn-success float-right mr-5" value="Save">
		</form>
	</div>
</div>
<?php include 'footer.php'; ?>