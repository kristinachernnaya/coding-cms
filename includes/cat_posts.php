
<div class="content-wrapper">
	<div class="content-wrapper_left">
				<div class="articles">
<?php
(isset($_GET['cat_id'])) ? $cat_id = $_GET['cat_id'] : header("Location: index.php");
$query ="SELECT * FROM posts WHERE post_category_id=$cat_id ORDER BY post_id DESC";
$result = mysqli_query($connection, $query) or die("Error");
if(mysqli_num_rows($result)=== 0 ){
	echo "<h2>No posts here!</h2>";
}{
while ($row = mysqli_fetch_assoc($result)) {
 $post_id = $row['post_id'];
	    $post_title = $row['post_title'];
		$post_author = $row['post_author'];
		$post_category = $row['post_category'];
		$post_category_id = $row['post_category_id'];
		$post_content = $row['post_content'];
		$post_content = mb_substr($post_content, 0, 250, 'UTF-8');
		$post_image = $row['post_image'];
		$post_tags = $row['post_tags'];
		$post_status = $row['post_status'];
		$post_date = $row['post_date'];
		$post_views = $row['post_views'];
		$post_comment_count = $row['post_comment_count'];?>





					<div class="article__wrapper">
						<div class="article__image"><img src="admin/images/<?php echo $post_image;?>" alt="Lorem ipsum dolor" ></div>
						<div class="article__content">
								<div class="article__content-topic"><a href="article.php?post=<?php echo $post_id;?>"><?php echo $post_title;?></a></div>
								<div class="article__content-preview"><?php echo $post_content.'[..]';?></div>

								<div class="article__date"><?php echo $post_date;?></div>

								<a href="article.php?post=<?php echo $post_id;?>"><button class="article__btn-more">Citeste..</button></a>
					</div>
						
					</div>
				

<?php
}}
?></div>
	</div>
