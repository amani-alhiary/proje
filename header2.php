<?php
session_start();
error_reporting(0);
ini_set('display_errors', 0);
?>
<header>
	
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Shoping Cart</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/iconic/css/material-design-iconic-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/linearicons-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<body class="animsition">
	
	<!-- Header -->
	<header class="header-v4">
		<!-- Header desktop -->
		<div class="container-menu-desktop">
			<!-- Topbar -->
			<div class="top-bar">
				<div class="content-topbar flex-sb-m h-full container">
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>

					<div class="right-top-bar flex-w h-full">
						<!-- <a href="#" class="flex-c-m trans-04 p-lr-25">
							Help & FAQs
						</a> -->

					
							<?php
                             if (isset($_SESSION['user_name'])){
								$name=$_SESSION['user_name'];
								?>
								<a href="user_page.php" class="flex-c-m trans-04 p-lr-25"><?php echo $name ?></a>
								<?php
							 }
							 else{
								
							 
							?>
							<a href="register.php" class="flex-c-m trans-04 p-lr-25">Sign Up</a>
							
							<?php }?>
						

						
						<?php
                             if (isset($_SESSION['user_name'])){
								?>
							   <a href="logout.php"  class="flex-c-m trans-04 p-lr-25">	log out</a>
								<?php
							 }
							 else{
								
							 
							?>
							<a href="login.php"  class="flex-c-m trans-04 p-lr-25">Log in</a> 
							<?php }?>
							

					
					</div>
				</div>
			</div>

			<div class="wrap-menu-desktop how-shadow1">
				<nav class="limiter-menu-desktop container">
					
					<!-- Logo desktop -->		
					<a href="index.php" class="logo">
						<img src="images/icons/logomain.png" alt="IMG-LOGO">
					</a>

					<!-- Menu desktop -->
					<div class="menu-desktop">
						<ul class="main-menu">
							<li class="active-menu">
								<a href="index.php">Home</a>
							
							</li>

							<li>
								<a href="products.php">Shop</a>
							</li>

							<li  >
								<a href="products.php">Categories</a>
								<ul class="sub-menu">
								<li class="p-b-10">
							<a href="productcat.php?cat=<?='tables'?>" class="stext-107 cl7 hov-cl1 trans-04">
								Tables
							</a>
						</li>

						<li class="p-b-10">
							<a  href="productcat.php?cat=<?='chairs'?>" class="stext-107 cl7 hov-cl1 trans-04">
								Chairs
							</a>
						</li>

						<li class="p-b-10">
							<a  href="productcat.php?cat=<?= 'sofas'?>" class="stext-107 cl7 hov-cl1 trans-04">
								Sofas
							</a>
						</li>

						<li class="p-b-10">
							<a  href="productcat.php?cat=<?= 'bookcases'?>" class="stext-107 cl7 hov-cl1 trans-04">
								Bookcases
							</a>
						</li>
						<li class="p-b-10">
							<a  href="productcat.php?cat=<?= 'decorations'?>" class="stext-107 cl7 hov-cl1 trans-04">
								Decorations
							</a>
						</li>
								</ul>
							</li>

						
							<li>
								<a href="about.php">About</a>
							</li>

							<li>
								<a href="contact.php">Contact</a>
							</li>
						</ul>
					</div>	


					<!-- Icon header -->
					<div class="wrap-icon-header flex-w flex-r-m">
						<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 js-show-modal-search">
							<i class="zmdi zmdi-search"></i>
						</div>
                        <?php
						if(isset($_SESSION['quantity'])){
							$qty=$_SESSION['quantity'];
							?>
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="<?= $qty?>">
						<a href="shoping-cart.php">
							<i class="zmdi zmdi-shopping-cart"></i>
							</a>
						</div>
						<?php
						}else{

						?>
                       
							<div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="0">
						<a href="shoping-cart.php">
							<i class="zmdi zmdi-shopping-cart"></i>
							</a>
						</div>

<?php
						}
						?>
						
                        <?php
                       
						?>
					
					</div>
				</nav>
			</div>	
		</div>

		<!-- Header Mobile -->
		<div class="wrap-header-mobile">
			<!-- Logo moblie -->		
			<div class="logo-mobile">
				<a href="index.php"><img src="images/icons/logomain.png" alt="IMG-LOGO"></a>
			</div>

			<!-- Icon header -->
			<div class="wrap-icon-header flex-w flex-r-m m-r-15">
				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 js-show-modal-search">
					<i class="zmdi zmdi-search"></i>
				</div>

				<div class="icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti js-show-cart" data-notify="2">
					<i class="zmdi zmdi-shopping-cart"></i>
				</div>

				<!-- <a href="#" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-r-11 p-l-10 icon-header-noti" data-notify="0">
					<i class="zmdi zmdi-favorite-outline"></i>
				</a> -->
			</div>

			<!-- Button show menu -->
			<div class="btn-show-menu-mobile hamburger hamburger--squeeze">
				<span class="hamburger-box">
					<span class="hamburger-inner"></span>
				</span>
			</div>
		</div>


		<!-- Menu Mobile -->
		<div class="menu-mobile">
			<ul class="topbar-mobile">
				<li>
					<div class="left-top-bar">
						Free shipping for standard order over $100
					</div>
				</li>

				<li>
					<div class="right-top-bar flex-w h-full">
	
						<?php
                             if (isset($_SESSION['user_name'])){
								$name=$_SESSION['user_name'];
								?>
								<a href="user_page.php" class="flex-c-m trans-04 p-lr-25"><?php echo $name ?></a>
								<?php
							 }
							 else{
								
							 
							?>
							<a href="register.php" class="flex-c-m trans-04 p-lr-25">Sign Up</a>
							
							<?php }?>
						
						</a>


						<?php
                             if (isset($_SESSION['user_name'])){
								?>
							   <a href="logout.php"  class="flex-c-m trans-04 p-lr-25">	log out</a>
								<?php
							 }
							 else{
								
							 
							?>
							<a href="login.php"  class="flex-c-m trans-04 p-lr-25">Log in</a> 
							<?php }?>
							
					</div>
				</li>
			</ul>

			<ul class="main-menu-m">
				<li>
					<a href="index.php">Home</a>
					<!-- <ul class="sub-menu-m">
						<li><a href="index.html">Homepage 1</a></li>
						<li><a href="home-02.html">Homepage 2</a></li>
						<li><a href="home-03.html">Homepage 3</a></li>
					</ul> -->
					<span class="arrow-main-menu-m">
						<i class="fa fa-angle-right" aria-hidden="true"></i>
					</span>
				</li>

				<li>
					<a href="products.php">Shop</a>
				</li>

				<!-- <li>
					<a href="shoping-cart.php" class="label1 rs1" data-label1="hot">Features</a>
				</li> -->

				<!-- <li>
					<a href="blog.html">Blog</a>
				</li> -->

				<li>
					<a href="about.php">About</a>
				</li>

				<li>
					<a href="contact.php">Contact</a>
				</li>
			</ul>
		</div>

		<!-- Modal Search -->
		<div class="modal-search-header flex-c-m trans-04 js-hide-modal-search">
			<div class="container-search-header">
				<button class="flex-c-m btn-hide-modal-search trans-04 js-hide-modal-search">
					<img src="images/icons/icon-close2.png" alt="CLOSE">
				</button>

				<form action="productsearch.php" method="GET" class="wrap-search-header flex-w p-l-15" >
					<button class="flex-c-m trans-04" type="submit" name="search_btn">
						<i class="zmdi zmdi-search"></i>
					</button>
					<input class="plh3" type="text" name="search" placeholder="Search..."  required value="<?php if(isset($_GET['search'])){echo $_GET['search']; } ?>" >
				</form>
			</div>
		</div>
	</header>

	