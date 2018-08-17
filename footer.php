	<footer class="container text-center bg-dark text-white py-3 mt-4">
		<?php 

		include 'include/connect.php';
		$sql="select * from assets where as_id=3";
		$query=mysqli_query($conn, $sql);
		$row=mysqli_fetch_array($query);
		?>
		<p class=" m-1">Copyright &copy; 2018 by <a href="index.php"><b><?php echo $row['name']; ?></b></a></p>
		<p>For permission to reprint articles from this site, please contact <a href=""><b><?php echo $row['email']; ?></b></a></p>
	</footer>

	<script type="text/javascript" src="assets/js/jquery.js"></script>
	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
</body>
</html>