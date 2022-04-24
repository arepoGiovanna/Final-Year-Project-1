<?php
  // include 'editDeleteUserAction.php';
  // include('login_register_function.php');
  // if (!isLoggedIn()) {
	// $_SESSION['msg'] = "You must log in first";
	// header('location: login.php');
  // }

  include('../admin/connection.php');
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="author" content="Maavwin">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Admin Panel</title>
  <!-- Latest compiled and minified CSS -->
  
     <!-- Bootstrap CSS -->
     <!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
	<link href=" https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css" rel="stylesheet">
	<link href="./css/viewUser.css" rel="stylesheet"> -->

          <!-- Bootstrap CSS -->
          <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap-theme.min.css">

        <!-- Custom CSS -->
        <link href="../assets/css/simple-sidebar.css" rel="stylesheet">
        <link href="../assets/css/dataTables.bootstrap.min.css" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.css" />

  <script type="text/javascript" src="https://cdn.datatables.net/v/bs4/dt-1.10.18/datatables.min.js"></script>
</head>

<body>
  <!-- <?php include "adminNavigation.php" ?> -->



<!-- Navbar  -->
  <nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">Admin Panel</a>
		<ul class="nav navbar-nav">
			<li class="active"><a href="checkAdmin.php">Admin Acc.
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a></li>
      <li class=""><a href="checkBagent.php">B. Agent Acc.
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a></li>
      <li class=""><a href="checkSagent.php">S. Agent Acc.
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a></li>
      <li class=""><a href="checkHiker.php">Hiker Acc.
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a></li>
      <li class=""><a href="checkMguide.php">Mount. Guide Acc.
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a></li>
      <li class=""><a href="register_Admin.php">Add Admin
			<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
			</a></li>

		</ul>
		<ul class="nav navbar-nav navbar-right">
	      <li><a href="../admin/logout.php"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
	    </ul>
	</div>
</nav>


<!-- Unknown use -->
  <!-- <div class="container-fluid" style="margin-top:4em;">
    <div class="row justify-content-center">
      <div class="col-md-10">
        <h3 class="text-center text-dark mt-2"></h3>
        <hr>
        <?php if (isset($_SESSION['response'])) { ?>
        <div class="alert alert-<?= $_SESSION['res_type']; ?> alert-dismissible text-center">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <b><?= $_SESSION['response']; ?></b>
        </div>
        <?php } unset($_SESSION['response']); ?>
      </div>
    </div>
    -->

    
    <div class="col-md-8">
        <?php
          $query = 'SELECT * FROM admin_account';
          $stmt = $con->prepare($query);
          $stmt->execute();
          $result = $stmt->get_result();
        ?>
        <h3 class="text-center text-info">Admin Records Present In The Database</h3>
        <table class="table table-striped" id="data-table" style="width:100%">
         
          <thead>
            <tr>
              <th>ID</th>
              <th>Username</th>
              <th>Email</th>
              
              
              <th>Phone</th>
              <th>action</th>
            </tr>
          </thead>
          <tbody>


            <?php while ($row = $result->fetch_assoc()) { ?>
            <tr>
              <td><?= $row['adminID']; ?></td>
              <td><?= $row['adminName']; ?></td>
              <td style="width:3px"><?= $row['adminEmail']; ?></td>
              <?php $row['user_type'];?>
              <td><?= $row['adminConnum']; ?></td>
              
              
              <td>
                <a href="deleteAdmin/editDelete.php?delete=<?= $row['adminID']; ?>" class="badge bg-danger p-2" onclick="return confirm('Do you want delete this record?');">Delete</a> |
                <a href="editUser.php?edit=<?= $row['adminID']; ?>" class="badge bg-success p-2">Edit</a>
              </td>
            </tr>
            <?php } ?>
          </tbody>
        </table>
      </div>
    </div>
  </div>
  <script type="text/javascript">
  $(document).ready(function() {
    $('#data-table').DataTable({
      paging: true
    });
  });
  </script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>

</body>

</html>