<?php

class Comment{
	
	private $con;

	public function __construct($con){
		$this->con = $con;
	}

	public function addComments($id, $name, $email, $body){
		if (!empty($body)) {
			$query = mysqli_query($this->con, "INSERT INTO comments VALUES('','$name', '$email','$body','Dezaprobat','$id');");
			if(!$query){
				die("Failed ".mysqli_error($this->con));
			}
		}else{ 
			return false;}
	}


	public function getApprovedComments($id){
		$query = mysqli_query($this->con, "SELECT * FROM comments WHERE post_id=$id AND status='Aprobat'");
		$str = "";
		while ($row = mysqli_fetch_assoc($query)) {
			$id = $row['id'];
			$post_id = $row['post_id'];
			$name = $row['comment_name'];
			$body = $row['body'];
?>         
	<li class="comment">
			<div class="comment-body">
					<img src="images/photo-1.jpg" alt="Image placeholder">
					<div class="comment-content">
					<h3><?php echo $name;?></h3>
					<p><?php echo $body;?></p>
					<a href="#" class="reply">Răspunde</a></div>
			</div>
	</li>

<?php		}
		
	}

	public function getComments(){
		$query = mysqli_query($this->con, "SELECT * FROM comments ORDER BY id DESC");
		$str = "";
		while ($row = mysqli_fetch_array($query)) {
			$id = $row['id'];
			$name = $row['comment_name'];
			$body = $row['body'];
			$email = $row['comment_email'];
			$status = $row['status'];
			$post_id = $row['post_id'];

$str .= "<tr>
		<td>$id</td>
		<td>$name</td>
		<td>$email</td>
		<td>$body</td>
		<td>$status</td>
		<td>$post_id</td>
		</tr>";
		}

		echo $str;
	}
}
?>