<?php include('./includes/header.php'); 
include ('../config/dbcon.php');
?>


<body style="margin:50px;">
<div class="container-fluid  d-flex align-items-center justify-content-center"> <h1>Comments</h1></div>



<table class="table table-striped table-hover border-danger ">
  <tr>
        <th>No.</th>
       
        <th>User Name</th>
        <th>Product Name</th>
        <th>Comment</th>
        <th>Action</th>
  </tr>
  <?php

    // delete user
    if (isset($_GET['deleteid'])) {
        $id = $_GET['deleteid'];

        mysqli_query($con, "DELETE FROM comments WHERE comment_id=".$id);
        
    }
    ?>

    


<?php
 //PRINT Table from data base
  $sql = "SELECT comment_id ,first_name,product_name,comment
  FROM comments 
  INNER JOIN users
  ON users.id = comments.user_id
  INNER JOIN products
  ON products.id = comments.product_id 
  WHERE approval='OFF'";
  $result = mysqli_query($con, $sql);

  while($row=$result->fetch_assoc()){
$id=$row["comment_id"];
    echo" <tr>
    <td>".$row["comment_id"] ."</td>";?>
 
    <?php echo" 
    
    <td>".$row["first_name"]."</td>
    <td>".$row["product_name"]."</td>
    <td>".$row["comment"]."</td>
    
    <td>
   
    <button class='btn btn-success'><a href='approve_comment.php?id=".$id."' class='text-light'><i class='bi bi-check-circle-fill'></i></a></button>"?>
    <button  class='btn btn-danger'><a onclick="return confirm('Do you want to delete this record?')" href=<?php echo"'comments.php?deleteid=".$id."' class='text-light remove'><i class='bi bi-x-circle-fill'></i></a></button>
    </td>
   </tr>";
  }

 ?>








<?php include('./includes/footer.php'); ?>