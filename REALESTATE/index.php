
<?php include 'header.php';  ?>
<?php
session_start();
?>

<?php
//setting connection
$mysqli=new mysqli('localhost', 'root', '', 'property');
  if($mysqli->connect_error) {
    printf("Cannot connect to database, try again!",$mysqli->connect_error);
    exit();

  }
    $query = "SELECT * FROM prop";
  $read = $mysqli->query($query);


  ?>

<div class="container">
  <h2>Property List</h2>
  <hr>
<table class=" table table-stripped table-hover">
  <thead>
    <tr>
      <th>Property Name</th>
      <th>Monthly Charges</th>
      <th>Address</th>
      <th>Property View</th>
      <th>Details</th>
    </tr>
  </thead>
  <tbody>
    <?php 
    //displaying result of uploaded details on the page
    while ($row=$read->fetch_assoc()) { ?>
  <tr class="info">
  <td><?php echo $row['name'];  ?></td>
  <td><?php echo $row['charge'];  ?></td>
  <td><?php echo $row['address'];  ?></td>
  <td><img src="uploads/<?php echo $row['images'];  ?>"></td>
  <td><a href="single.php?posts=<?php echo $row['id']; ?>">Details</a></td>
  </tr> 
  <?php } ?>
  </tbody> 
</table>
  </div>




<?php include 'footer.php';  ?>

