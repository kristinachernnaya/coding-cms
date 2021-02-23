
<?php
include  "includes/header.php";
include  "includes/connect.php";
include  "includes/navigation.php";
?>

<div class="content-wrapper">
<div class="register">
	<div class="register__topic"><span>Inregistrare</span></div>
	<div class="register__form">
		<form  class="register__form-form" action="includes/form_handler/create.php" method="post" role="form">
			<div class="form__group">
				<input type="text" name="username" placeholder="Username">
			</div>

			<div class="form__group">
				<input type="text" name="email" placeholder="Email">
			</div>
			<div class="form__group">
				<input type="text" name="pwd" placeholder ="Password"  class="form-control">
				<div class="form__group-text">
				Sugestie de parola:<br>
				<i><?php echo uniqid();?></i><br>
				<i><?php echo uniqid();?></i>
				</div>
			</div>
            <div class="form__group">
			<input class="form__submit-btn" type="submit" name="create_submit" value="Register in">
			</div>
		    <div class="register__register">Deja aveti profil? 
		    	<a href="login.php">Logati-va.</a>
		    </div>
		</form>
	</div>
	
</div>
</div>

<?php 
include  "includes/footer.php";
 ?>