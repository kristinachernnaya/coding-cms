<div class="articles">
					<div class="articles__topic">Articole recente</div>
					<div class="articles__list">

<?php 
$query ="SELECT * FROM posts ORDER BY post_date DESC LIMIT 3";
$result = mysqli_query($connection, $query);

while ($row = mysqli_fetch_assoc($result)) {
 $post_id = $row['post_id'];
	    $post_title = $row['post_title'];
		$post_image = $row['post_image'];
		?>

						<div class="articles__list-item"><a href="#"><img src="admin/images/<?php echo $post_image;?>"><?php echo $post_title;?></a></div>
	
					

				<?php } ?>

				</div>
				</div>