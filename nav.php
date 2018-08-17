<nav class="navbar navbar-expand-md navbar-dark bg-dark container sticky-top mb-2">
		<a class="nav-link d-sm-block d-md-none d-lg-none" href="index.php">Home</a>
	  	<button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#collnav" aria-controls="collnav" aria-expanded="false" aria-label="Toggle navigation">
	    	<span class="navbar-toggler-icon "></span>
	  	</button>
	  	<div class="collapse navbar-collapse" id="collnav">
	    	<ul class="navbar-nav mr-auto">
	    		<?php 
	    		include 'include/connect.php';
	    		$sql = "select * from post_catagory where status ='1' ";
	    		$query = mysqli_query($conn,$sql);
	    		foreach ($query as $row) {	    			
	    		?>

		      	<li class="nav-item"><a href="catagory.php?cat_id=<?php echo $row['catagory_id']; ?>" class="nav-link" href="#"><?php echo $row['catagory_name']; ?></a></li> 

		      	<?php } ?>
	   		</ul>
	  	</div>
	</nav>