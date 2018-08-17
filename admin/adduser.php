<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>
<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
  <h3>Add User</h3>
  <a href="users.php" class=" mr-5 btn btn-success btn-sm"> <i class="fas fa-backward"> </i> Back to usertable</a>
</nav> 

<form style="max-width: 800px; margin: auto;" action="include/adduser.php" method="post">
	<div class="form-group">
		<label>Username:</label>
		<input type="text" name="name" placeholder="Enter User Username" class="form-control">
	</div>
	<div class="form-group">
		<label>Email:</label>
		<input type="email" name="email" placeholder="Enter User Email" class="form-control">
	</div>
	<div class="form-group">
		<label>Password:</label>
		<input type="password" name="password" placeholder="Enter User Password" class="form-control">
	</div>
	<div class="text-center">
		<input type="submit" name="add" value="ADD" class="btn btn-primary btn-sm w-25" >
		<input type="reset" name="reser" value="Reset" class="btn btn-danger btn-sm w-25">
	</div>
</form>
<?php include 'footer.php'; ?>