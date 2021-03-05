 <?php include "db.php" ?>

<?php
  function add_category() {
  global $connection;
 
  
  if (isset($_POST['cat_add'])) {
     if (empty($_POST['cat_title'])) {
        header("Location: ../categories.php?Field_cannot_be_empty");
     } else {
		    
           $cat_title = $_POST['cat_title'];
           $query = "INSERT INTO categories(cat_title)VALUES('$cat_title')";
           $result = mysqli_query($connection, $query);

           if (!$result) {
              die("Could not send data " . mysqli_error($connection));
           } else {
              header("Location: ../categories.php?category_added");
          }
        } 

  }
}

add_category();


function show_category() {
   global $connection;
   $query = "SELECT * FROM categories";
   $result = mysqli_query($connection, $query);
  
   if (!$result) {
     die("Canot show the data " . mysqli_error($connection));
   }

   while ($row = mysqli_fetch_assoc($result)) {
    $cat_id = $row['cat_id'];
    $cat_title = $row['cat_title'];
    echo "<tr>";
    echo "<td>{$cat_id}</td>";
    echo "<td>{$cat_title}</td>";
    echo "<td><a href='categories.php?delete_cat={$cat_id}' class='btn btn-danger'>Delete</a></td>";
    echo "</tr>";
    
  }
}



function delete_category() {
   
   global $connection;
   if (isset($_GET['delete_cat'])) {
   $cat_id = $_GET['delete_cat'];
   $query = "DELETE FROM categories WHERE cat_id=$cat_id";
   $result = mysqli_query($connection, $query);

           if (!$result) {
              die("Could not send data " . mysqli_error($connection));
           } else {
              header("Location: categories.php?category_deleted");
          }
}
}

delete_category();

function add_post() {
	global $connection;
	
	if (isset($_POST['publish'])) {
		$post_title =$_POST['title'];
		$post_author =$_POST['author'];
		$post_category =$_POST['category'];
		//get cat_id from db
		$sql = mysqli_query($connection, "SELECT cat_id FROM categories WHERE cat_title='$post_category'");
		$row = mysqli_fetch_array($sql);
		$post_category_id = $row['cat_id'];
		$post_content =mysqli_real_escape_string($connection,$_POST['content']);
		$post_tags =$_POST['tags'];
		$post_status = $_POST['status'];
		$post_date = date("l d F Y");
		$post_views = 0;
		$post_comment_count = 0;
		echo $post_date;


		if(isset($_FILES['post_image'])) {
            $dir = "../images/";
			$target_file = $dir.basename($_FILES['post_image']['name']);
			if (move_uploaded_file($_FILES['post_image']['tmp_name'], $target_file)) {
				  echo "Image was uploaded";
			} else {
				echo "Can't upload the image";
			}
		}
		
		$query = "INSERT INTO posts(post_title, post_category, post_category_id, post_author, 
		post_content, post_date, post_image, post_comment_count, post_views, 
		post_tags, post_status)VALUES('$post_title','$post_category','$post_category_id','$post_author',
		'$post_content', '$post_date', '$target_file', '$post_comment_count', '$post_views', '$post_tags', '$post_status' )";
		$result = mysqli_query($connection, $query);
		if (!$result) {
			die("Could not send data" . mysqli_error($connection));
			header("Location: ../posts.php?source=add_new");
		} else {
		$added_title = $post_title;	
		header("Location: ../posts.php?source=post_added&name=" . urlencode($post_title));
		
		}
	}
}
add_post();  

function add_pmessage($titlu) {

	return "Postare nouă a fost adăugată cu titlul: " . $titlu;
}

// read posts 


function show_posts() {
   global $connection;
   $user = $_SESSION['userLogged'];
   $sql = mysqli_query($connection,"SELECT * FROM users WHERE email='$user'");
	 $res = mysqli_fetch_array($sql); 
	 $username = $res['username'];
	 $role = $res['role'];

if($role === 'Profesor' || $role === 'Administrator'){
	$query = "SELECT * FROM posts";
}else{
	$query = "SELECT * FROM posts WHERE post_author='$username'";
}

   
   $result = mysqli_query($connection, $query);
      
   while ($row = mysqli_fetch_assoc($result)) {
	   
	   
	    $post_id = $row['post_id'];
	    $post_title = $row['post_title'];
		$post_author = $row['post_author'];
		$post_category = $row['post_category'];
		$post_category_id = $row['post_category_id'];
		$post_content = substr($row['post_content'],0,50);
		$post_image = $row['post_image'];
		$post_tags = $row['post_tags'];
		$post_status = $row['post_status'];
		$date = $row['post_date'];
		$post_views = $row['post_views'];
		$post_comment_count = $row['post_comment_count'];
		

		echo "<tr>";
		echo "<td>{$post_id}</td>";
		echo "<td>{$post_title}</td>";
		echo "<td>{$post_author}</td>";
		echo "<td>{$post_category}</td>";
		echo "<td>{$post_status}</td>";
		echo "<td><img src='images/{$post_image}' width='50px'></td>";
		echo "<td>{$post_content}</td>";
		echo "<td>{$date}</td>";
		echo "<td>{$post_tags}</td>";
	
		echo "<td><a href='posts.php?statut_post={$post_id}' class='btn btn-success'>Schimbă statutul</a></td></td>";
		echo "<td><a href='posts.php?source=edit&edit_post={$post_id}' class='btn  btn-primary'>Editează</a></td>";
		echo "<td><a href='posts.php?delete_post={$post_id}'  class='btn btn-danger'>Șterge</a></td>";
		echo "</tr>";
		
   }
	
}

//publish or draft post
function modifyStatus($id){
	global $connection;
	$query = mysqli_query($connection, "SELECT post_status FROM posts WHERE post_id=$id");
	if(mysqli_num_rows($query) > 0){
		$result = mysqli_fetch_array($query);
		$status = $result['post_status'];

		if($status === "ciornă"){
			$query = mysqli_query($connection,"UPDATE posts SET post_status='publicat' WHERE post_id=$id");

		}else{
			$query = mysqli_query($connection,"UPDATE posts SET post_status='ciornă' WHERE post_id=$id");

		}
	}else{
		return false;
	}
}

//update post

function editPost(){
	global $connection;

	if(isset($_POST['modify'])){
	$eid = $_POST['editID'];
	$title = $_POST['title'];
	$author = $_POST['author'];
	$category = $_POST['category'];
	$content = $_POST['content'];
	$tags = $_POST['tags'];
	$status = $_POST['status'];
	$img = $_POST['image'];
	$target_file = "";
	
//get post cat_id
	$sql=mysqli_query($connection,"SELECT cat_id FROM categories WHERE cat_title=$category");
	$record = mysqli_fetch_array($sql);
	$post_cat_id = $record['cat_id'];


	if(isset($_FILES['post_image'])) {
		$dir = "../images/";
		$target_file = $dir.basename($_FILES['post_image']['name']);
		if (move_uploaded_file($_FILES['post_image']['tmp_name'], $target_file)) {
			  echo "Image was uploaded";
			  
			
		} else {
			echo "Can't upload the image";

		}
	}else{
		$target_file = $img;
	}


	$query = mysqli_query($connection,"UPDATE posts SET post_title='$title',post_author='$author',post_category='$category',post_category_id='$post_cat_id',post_content='$content',post_status='$status',post_tags='$tags',post_image='$target_file' WHERE post_id ='$eid'");
	if($query){
		header("Location: ../posts.php?source=post_view");
	}
}
}
editPost();
?>
