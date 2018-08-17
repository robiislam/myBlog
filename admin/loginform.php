<!DOCTYPE html>
<html>
<head>
	<title>Login</title>
	<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">
</head>
<body>
	
	<div class="container-fluid">
		<div class="row mt-5">
			<div class="col-md-6 offset-md-3" >
				<div class="card">
					<form action="include/login.php" method="post">
						<div class="card-header">
							<h1 class="text-center display-4">Log In</h1>
						</div>
						<div class="card-body">
							<?php 
								if (isset($_GET['err'])) {
									echo '<span style="color: red;">'.$_GET['err'].'</span>';
								}
							?>
							<div class="form-group">
								<label>Email:</label>
								<input type="email" name="email" placeholder="Enter Your Email" class="form-control">
							</div>
							<div class="form-group">
								<label>Password:</label>
								<input type="password" name="password" placeholder="Enter Your Password" class="form-control">
							</div>
						</div>
						<div class="card-footer">
							<input type="submit" name="login" value="Login" class="btn btn-success">
							<p class="float-right">Not Yet a Member? <a href="regesterform.php">Regestrer</a> Here.</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>