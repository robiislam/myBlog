<?php include 'header.php'; ?> 
<?php include 'nav.php'; ?>
<?php include 'leftside.php'; ?>
<div class="col-lg-6 col-md-9">
<?php 

if (isset($_GET['cat_id'])) {
	$cat_id=$_GET['cat_id'];
}
include 'include/connect.php';
$sql = "SELECT * FROM post WHERE catagory_id=$cat_id";
$allquery = mysqli_query($conn, $sql);


$num_of_rows=mysqli_num_rows($allquery);
$ppp_sql="select post_page from assets where as_id=3";
$ppp_query=mysqli_query($conn, $ppp_sql);
$ppp_result=mysqli_fetch_array($ppp_query);
$post_per_page=$ppp_result['post_page'];
$count_page=ceil($num_of_rows/$post_per_page);
if (!isset($_GET['page'])) {
	$page=1;
} else {
	$page=$_GET['page'];
}
// echo $count_page;
$start_limit_number=($page-1)*$post_per_page;
// echo $start_limit_number;

$data = "SELECT * FROM post WHERE catagory_id=$cat_id ORDER BY date DESC LIMIT ".$start_limit_number.",".$post_per_page;
$query = mysqli_query($conn,$data);
$number=mysqli_num_rows($query);
if ($number <= 0) {
	echo "<p>SORRY! <br>No Result Found In This Catagory</p>";
}
foreach ($query as $row) {

?>
<div>
	<h2><a href="single.php?id=<?php echo $row['post_id'] ?>" style="color: #023957;"><?php echo $row['title']; ?></a></h2>
	<small>Written By <a href="#"><?php echo $row['author']; ?></a> at  <?php echo date('F j, Y, g:i a', strtotime($row['date'])); ?></small>
	<hr>
	<img src="image/<?php echo $row['image']; ?>" class="float-right img-thumbnail m-2" style="max-height: 120px; max-width: 35%;">
	<p><?php echo substr($row['body'], 0,400); ?></p>
	<p class="back-2">
		<?php 
		$com_id=$row['post_id'];
		$com_sql="SELECT * FROM comment WHERE post_id=$com_id AND status=1";
		$com_query= mysqli_query($conn, $com_sql);
		$com_result=mysqli_num_rows($com_query);
		?>
		<span><strong>200</strong> Views</span> | 
		<a href="single.php?id=<?php echo $row['post_id'] ?>"> <strong><?php echo $com_result; ?></strong> Comment</a> | 
		<a href="single.php?id=<?php echo $row['post_id'] ?>" class="btn btn-primary btn-sm">Read More</a>
	</p>
</div>
<?php } ?>

<nav aria-label="Page navigation example" >
  <ul class="pagination">
  	<?php 

  	if (!isset($_GET['page'])) {
  		$page=1;
  		
  	} else{
  		$page=$_GET['page'];
  		if ($page > 1) {
  			$page=$page-1;
  			echo '<li class="page-item"><a class="page-link" href="index.php?page='.$page.'">Previous</a></li>';
  		}
  	}
  	for ($page=1; $page <= $count_page; $page++) { 
  		echo '<li class="page-item"><a class="page-link" href="index.php?page='.$page.'">'.$page.'</a>';
	}
  	?>
  	<?php

  	if (!isset($_GET['page'])) {
  		$page=1;
  	} else{
  		$page=$_GET['page'];
  		
  	}
  	if ($page < $count_page) {
  		$page=$page+1;
  			echo '<li class="page-item"><a class="page-link" href="index.php?page='.$page.'">Next</a></li>';
  		}
  	?>
  </ul>
</nav>

</div>

<?php include 'rightside.php'; ?>
<?php include 'footer.php'; ?>
			