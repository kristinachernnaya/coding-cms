<?php 
include "admin/includes/db.php";

?>
<?php include "classes/comment.php";?>
<?php include "function.php";?>
<?php $comment_obj = new Comment($connection); ?>


<!DOCTYPE html>
<html>
<head>
	 <meta charset="utf-8">
	 
    <meta name="viewport" content="width=device-width,initial-scale=1.0,maximum-scale=1" />
	<title>
		Coding..
	</title>
	<link rel="stylesheet" type="text/css" href="css/reset.css">
	<link rel="stylesheet" type="text/css" href="css/style.css">

</head>
<body>