<?php include 'includes/header.php'; ?>

<div id="wrapper">

	<!-- Navigation -->
	<?php include 'includes/navigation.php'; ?>


	<div id="page-wrapper">

		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">

					<h1 class="page-header">
						Welcome to the Administration Panel
					</h1>
					<div class="col-md-7">
					<h3>Adaugă utilizator</h3>
					<form action="validator/validate.php" method="POST" autocomplete="off" >
					<div class="form-group">
				<input type="text" name="username" placeholder="Username" id="username" class="form-control">
			</div>

			<div class="form-group">
				<input type="text" name="email" placeholder="Email" id="email" class="form-control">
			</div>

			<div class="form-group">
				<input type="text" name="password" placeholder="Password" id="password" class="form-control">
			</div>
			<div class="form-group">
			<select name="role" id="role" class="form-control">
			 <option value="Administrator"> Administrator</option>
			 <option value="Profesor"> Profesor</option>
</select>
			</div>
            <div class="form-group">
			<input class="btn btn-success btn-block" type="submit" name="submit" id="submit" value="Register in">
			</div>
					</form>
					</div>

				</div>


			</div>

			<!-- /.row -->

		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

<!-- jQuery -->
<script src="bootstrap/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
