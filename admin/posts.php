<?php include 'includes/header.php'; 
include 'includes/helper.php';

//delete post
if (isset($_GET['delete_post']) && $_GET['delete_post'] != '') {
  $dlt = $_GET['delete_post'];
  if(delete('posts','post_id',$dlt)){
    redirect('posts.php?source=');
  }
}


//unapprove post
if(isset($_GET['statut_post'])&& $_GET['statut_post'] != ''){
	$app_id = $_GET['statut_post'];
	if(modifyStatus($app_id)){
		redirect('posts.php?source=');
	}
}


//update or modify content
if(isset($_GET['edit_post'])&& $_GET['edit_post'] != ''){
$eid = $_GET['edit_post'];
if(editPost($eid)){
	echo "okay";
}
}
?>

<divs>
<div id="wrapper">

	<!-- Navigation -->
	<?php include 'includes/navigation.php'; ?>


	<div id="page-wrapper">

		<div class="container-fluid">

			<!-- Page Heading -->
			<div class="row">

					<h1 class="page-header">
						Bine ai venit la sistemul de administrare						
					</h1>

			
					  
					<?php
					global $source;
						if (isset($_GET['source'])) {
								$source = $_GET['source'];
						
						switch ($source) {
							    case 'add_new':
								include "includes/add_post.php";
								break;
								case 'edit':
								include "includes/edit_post.php";
								break;
							
								default:
								include "includes/view_post.php";
								break;
						}
					}else{
							include "includes/view_post.php";
						}						
		
					 ?>
</div>
				</div>
					 
					 


			</div>

			<!-- /.row -->

		</div>
		<!-- /.container-fluid -->

	</div>
	<!-- /#page-wrapper -->

</div>
<!-- /#wrapper -->

</div>

<!-- jQuery -->
<script src="bootstrap/js/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="bootstrap/js/bootstrap.min.js"></script>

</body>

</html>
