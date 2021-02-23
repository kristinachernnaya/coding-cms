
<?php
include  "includes/header.php";
include  "includes/connect.php";
include  "includes/navigation.php";
?>

<div class="content-wrapper">
	<div class="content-wrapper_left">
		

<?php if (isset($_GET['post'])) {
	$p_id = $_GET['post'];

	$query = "SELECT * FROM posts WHERE post_id = $p_id";
	$result = mysqli_query($connection, $query);

}else{
	header("Location: index.php");}?>





<?php 


while ($row = mysqli_fetch_assoc($result)) {
	
		$post_id = $row['post_id'];
	    $post_title = $row['post_title'];
		$post_author = $row['post_author'];
		$post_category = $row['post_category'];
		$post_category_id = $row['post_category_id'];
		$post_content = $row['post_content'];
		$post_image = $row['post_image'];
		$post_tags = $row['post_tags'];
		$post_status = $row['post_status'];
		$post_date = $row['post_date'];
		$post_views = $row['post_views'];
		$post_comment_count = $row['post_comment_count'];?>

<div class="breadcrumbs inner">
			<ul class="breadcrumbs__items">
				<li class="breadcrumbs__item"><a href="index.php" class="breadcrumbs__link">BLOG</a></li>
				<li class="breadcrumbs__item"><span class="breadcrumbs__last"><?php echo $post_title;?></span></li>
			</ul>
</div>

<div class="articlepage__topic">
	<?php echo $post_title;?>
</div>

<div class="articlepage__content">
	<div class="articlepage__content-image">
		<img src="admin/images/<?php echo $post_image;?>">
	</div>
	<div class="articlepage__text">
		<?php echo $post_content;?>
	</div>
	<div class="articlepage__author-time">
		Postat de <span><?php echo $post_author;?></span> la <?php echo $post_date?>
	</div>
	<div class="articlepage__comments-views">
		<span><?php
	(isset($_GET['post'])) ? $post_id = $_GET['post'] : $post_id = 0;
	$query = mysqli_query($connection, "SELECT * FROM comments WHERE status='Aprobat' AND post_id=$post_id");
	$num_comments = mysqli_num_rows($query) or die("Error");
	echo $num_comments." comentarii";
	?></span><span><?php echo $post_views?> vizionări</span>
	</div>
</div>
<?php include "includes/recent-articles.php";?>
<div class="comments-list">
	<div class="comment-count"><?php
	(isset($_GET['post'])) ? $post_id = $_GET['post'] : $post_id = 0;
	$query = mysqli_query($connection, "SELECT * FROM comments WHERE status='Aprobat' AND post_id=$post_id");
	$num_comments = mysqli_num_rows($query) or die("Error");
	echo $num_comments." comentarii";
	?></div>
	<ul class="children">
	
				<?php
		
				 if(isset($_GET['post'])){
 					$id=$_GET['post'];
					$comment_obj->getApprovedComments($id);
				}
				?>
		
	</ul>
</div>
				<hr class="pre-comment">
				<?php
 if(isset($_GET['post'])){
 	$id=$_GET['post'];
 	if(isset($_POST['comment'])){
 		$name = $_POST['name'];
 		$email = $_POST['email'];
 		$body = $_POST['body'];
 		$comment_obj->addComments($id, $name, $email, $body);
 	}
 }
				?>
				<div class="comments">
					<div class="comments__topic">Lasa un comentariu</div>
					<div class="comments__form">
						<form class="comments__form-form" method="POST" action="article.php?post=<?php echo $post_id;?>">
							<div class="comments__form-form_textarea"><textarea placeholder="Comentariul tau..." rows="8" name="body"></textarea></div>
							<div class="comments__form-form_personal"><input type="text" name="name"  placeholder="Nume (obligatoriu)">
							<input type="text" name="email" placeholder="Email (obligatoriu)">
						</div>
						<button class="comments__form-form_btn" name="comment" type="submit">Posteaza</button>
						</form>
					</div>
				</div>
<?php
}

?>

				
					
				

</div>

<?php
 include  "includes/info-right.php";
?>

</div>
<?php 

include  "includes/footer.php";
 ?>