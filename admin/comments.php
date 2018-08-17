<?php include 'header.php'; ?>
<?php include 'nav.php'; ?>
<nav class="navbar navbar-dark bg-dark mb-3 p-1 text-white rounded">
  <h3>All Comments</h3>
</nav> 
<table id="table" class="table-striped ">
	<thead>
		<tr>
			<th>Serial No.</th>
			<th>Name</th>
			<th>Comment</th>
			<th>Post</th>
			<th>Action</th>
		</tr>
	</thead>
	<?php 

	$x = 1;

	include 'include/connect.php';
	$data = "select * from comment inner join post on post.post_id=comment.post_id";
	$query = mysqli_query($conn,$data);
	foreach ($query as $row) {
	
	?>
	<tbody>
		<tr>
			<td>
				<?php echo $x++; ?>
			</td>
			<td><?php echo $row['name']; ?></td>
			<td><?php echo $row['com_body']; ?></td>
			<td><?php echo $row['title']; ?></td>
			<td>
				<a href="cget.php?cid=<?php echo $row['comment_id'] ?>"><i class="fas fa-pen"></i> </a>&nbsp;
				<a href="include/delete.php?cid=<?php echo $row['comment_id'] ?>"> <i class="fas fa-trash-alt"></i></a>
				<?php 
				if ($row['status']=='1') { ?>				
					<a href="include/notapprove.php?cid=<?php echo $row['comment_id'] ?>"> <i class="fas fa-check-circle"></i> </a>
				<?php } else{ ?>
				<a href="include/approve.php?cid=<?php echo $row['comment_id'] ?>"> <i class="fas fa-times-circle"></i> </a>
				<?php }?>
			</td>
		</tr>
	</tbody>
	<?php } ?>
</table>


<?php include 'footer.php'; ?>


