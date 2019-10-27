<?php include 'header.php';  ?>

<style>
	
	body{
		background: linear-gradient(rgba(0, 0, 50, 0.5), rgba(0, 0, 50, 0.5)), url(image/nicebanner.jpg);
		background-size: cover;
		background-position: center;
	}
	.login-box{
		max-width: 700px;
		float: none;
		margin: 80px auto;
	}
	.login-left{
		background: rgba(211, 211, 211, 0.5);
		padding: 10px;
	}
	
	.form-control{
		background-color: transparent;
	}
</style>

<center><h2 style="color: white">Welcome to our Real State Property, where your dream is our mission....</h2></center>
</div>
<div class="container">
	<div class="login-box">
	<div class="row">
		<div class="login-left">
			<center><h2>Login Here</h2></center>
			<form action="validation.php" method="post">
				<div class="form-group">
					<label>Username</label>
					<input type="text" name="user" class="form-control" required>
				</div>
				<div class="form-group">
					<label>Password</label>
					<input type="password" name="password" class="form-control" required>
				</div>
				<button type="submit" class="btn btn-danger" name="login">Login</button>
				<a href="userreg.php" style="color: yellow;">  | New User? Register Here</a>
				<a href="admilog.php" style="color: white;">  | Admin Login</a>
			</form>
		</div>
		</div>
	</div>
</div>







<?php include 'footer.php';  ?>