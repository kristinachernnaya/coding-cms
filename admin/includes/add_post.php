<?php
 $sql = "SELECT * FROM categories";
 $res = mysqli_query($connection, $sql);

 ?>

<div class="container">
<div class="row">
  <h2>Adaugă postare</h2>
  <div class="col-sm-12 col-lg-7">
    <form action="includes/functions.php" method="post" enctype="multipart/form-data">
      <div class="form-group">
        <label for="">Titlul postării</label>
        <input type="text" name="title" placeholder="Titlu" class="form-control">
      </div>
      <div class="form-group">
        <label for="">Autorul postării</label>
        <input type="text" name="author" placeholder="Autor" class="form-control">
      </div>
      <div class="form-group">
        <label for="">Categoria postării</label>
      <select class="form-control" name="category">
        <?php
          while ($row = mysqli_fetch_array($res)) {
            $cat_title = $row['cat_title'];
            echo "<option value='$cat_title'>$cat_title</option>";
          }
         ?>

      </select>
      </div>
      <div class="form-group">
        <label for="">Id-ul categoriei</label>
      <select class="form-control" name="category_id">
        <?php
        $sql = "SELECT * FROM categories";
        $res = mysqli_query($connection, $sql);
          while ($row = mysqli_fetch_array($res)) {
            $cat_title = $row['cat_title'];
              $cat_id = $row['cat_id'];
            echo "<option value='$cat_id'>$cat_id - $cat_title</option>";
          }
         ?>
      </select>
      </div>
      <div class="form-group">
        <label for="">Conținutul postării</label>
        <textarea name="content" rows="8" cols="80" class="form-control"></textarea>
      </div>
      <div class="form-group">
        <label for="">Tags</label>
        <input type="text" name="tags" placeholder="Separă tag-urile prin virgulă (,)" class="form-control">
      </div>
      <div class="form-group">
        <label for="">Status</label>
      <select class="form-control" name="status">
        <option value="ciornă">Ciornă</option>
        <option value="publicat">Publicat</option>
      </select>
      </div>
      <div class="form-group">
        <label for="">Imagine</label>
        <input type="file" name="post_image"  class="form-control">
      </div>
      <div class="form-group">
        <input type="submit" name="publish" value="Publică postarea"  class="btn btn-primary">
      </div>
    </form>
  </div>
</div>

</div>
