<?php
$mysqli = new mysqli("localhost","root","","cms_coding") or die("Could not connect");
$error = [];
if (isset($_POST['create_submit'])) {
	$username = clean($_POST['username']);
	$email = clean($_POST['email']);
	$pwd = clean($_POST['pwd']);

	if (empty($username)) {
		array_push($error, "<p class='alert alert-danger'>Username este obligatoriu</p>");
		header("Location: ../../cms-admin.php?error=Username_este_obligatoriu");
	}elseif (!filter_var($email,FILTER_VALIDATE_EMAIL)) {
		array_push($error, "<p class='alert alert-danger'>Email-ul este invalid</p>");
		header("Location: ../../cms-admin.php?error=Email-ul_este_invalid");
	}
	elseif (empty($email)) {
		array_push($error, "<p class='alert alert-danger'>Email-ul este obligatoriu</p>");
		header("Location: ../../cms-admin.php?error=Email-ul_este_obligatoriu");
	}
	elseif (strlen($pwd) <= 5) {
		array_push($error, "<p class='alert alert-danger'>Parola este scurta</p>");
		header("Location: ../../cms-admin.php?error=Parola_este_scurta");
	}
	else{
		if (empty($error)) {
			$rand = rand(1,3);
			switch ($rand) {
				case '1':
					$profile_pic ="users/profile_pics/defalts/head-icon.png"
					break;
				case '2':
					$profile_pic ="users/profile_pics/defalts/head-icon.png"
					break;
				case '3':
					$profile_pic ="users/profile_pics/defalts/head-icon.png"
					break;
				
			}
			$hashedPwd = md5($pwd);
			$sql = mysqli_queri($mysqli, "INSERT INTRO users VALUES('','$username','$email','$hashedPwd')");
		}
	}
}

function clean($data){
	global $mysqli;
	$data =htmlspecialchars($data);
	$data =mysqli_real_escape_string($mysqli, $data);
	$data = stripslashes($data);
	$data = strip_tags($data);
	return $data;
}