<body>
    <?php 

    session_start();
    if (!isset($_SESSION['id'])) {
        header('location:loginform.php');
    }
    ?>
    <nav class="topnav" style="z-index: 1000;">
        <a href="" style="font-size: 18px; font-weight: bold;">Dashboard</a>
        <div style="float: right;" class="user">
            <div>
                <img src="image/profile.jpg" style="height: 30px; width: 30px; border-radius: 50%;">
                <a href="">Hellow <?php echo $_SESSION['name']; ?></a>
            </div>
            <form action="include/logout.php" method="post">
                <input type="submit" name="submit" class="btn btn-outline-danger btn-block btn-sm ml-3" value="Logout">
            </form>
        </div>
        
    </nav>
    <nav class="sidenav">
        <p><a href="../index.php"><i class="fas fa-desktop"></i><span>View Site</span></a></p>
        <p><a href="index.php"><i class="fas fa-chart-bar"></i><span>Status</span></a></p>
        <ul>
            <li> <a href="post.php"><i class="fas fa-pencil-alt"></i><span>Post</span></a></li>
            <li><a href="media.php"><i class="fas fa-images"></i><span>media</span> </a></li>
            <li><a href="comments.php"><i class="fas fa-comment-alt"></i><span>Comments</span></a></li>
            <li><a href="users.php"><i class="fas fa-users"></i><span>Users</span></a></li>
            <li><a href="advertise.php"><i class="fas fa-file-alt"></i><span>Advertise</span></a></li>
        </ul>
    </nav>
    <div class="mainmerg">
        
<div class="container-fluid">