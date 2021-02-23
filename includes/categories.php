<?php 
$query = "SELECT * FROM categories ORDER BY cat_id DESC";
$result = mysqli_query($connection, $query);
?>

<div class="categories">
						<div class="categories__topic">Categorii:</div>
						<div class="categories__list">
							<ul class="categories__list-items">
								<?php 
while ($row = mysqli_fetch_array($result)) {
	$cat_id=$row['cat_id'];
	$cat_title = $row['cat_title'];
$sql = mysqli_query($connection, "SELECT * FROM posts WHERE post_category_id=$cat_id") or die("Error");
$span = mysqli_num_rows($sql);
	echo "<li class='categories__list-item'><a href='category.php?cat_id=$cat_id'>$cat_title<span>($span)</span></a></li>";
}
								?>
							</ul>
						</div>
					</div>