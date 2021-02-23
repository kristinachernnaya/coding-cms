
<?php
include  "includes/header.php";
include  "includes/connect.php";
include  "includes/navigation.php";
?>
<div class="content-wrapper">
<div class="sign-in">
	<div class="sign-in__topic">Bine ai venit la <span>coding...</span></div>
		<div class="sign-in__form">
			<form  class="sign-in__form-form" action="includes/form_handler/login.php" method="post" role="form">
				<div class="form__group"><input type="text" name="email" placeholder="Email"></input></div>
				<div class="form__roup"><input type="password" name="pwd" placeholder ="Password"></input></div>
				  <div class="form__group">
			<input class="form__submit-btn" type="submit" name="login_submit" value="Log in">
			</div>
			    <div class="sign-in__register">Inca nu aveti un profil? <a href="create_admin.php">Creati un profil.</a></div>
			</form>
		</div>
	
</div>
</div>
<?php 
include  "includes/footer.php";
 ?>