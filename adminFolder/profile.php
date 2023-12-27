<head>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="vendors/styles/core.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css">
	<link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/dataTables.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/responsive.bootstrap4.min.css">
	<link rel="stylesheet" type="text/css" href="vendors/styles/style.css">

	
</head>


<?php 
include"adminHeader.php"; 
include_once"connection.php";
// variable declaration
$message="";
$mess="";
$id="";

if(isset($_POST['update']))
{
$photo=$_FILES['photo']['name'];
if(empty($photo)){
	$selectPhoto=mysqli_query($conn,"select * from new_user WHERE id='".$_SESSION['alogin']."'");
	while($data=mysqli_fetch_array($selectPhoto)){
		$photo=$data['photo'];
		move_uploaded_file($_FILES["photo"]["tmp_name"],"../NewsPhoto/".$_FILES["photo"]["name"]);
	}
}else{
	
	move_uploaded_file($_FILES["photo"]["tmp_name"],"../NewsPhoto/".$_FILES["photo"]["name"]);
}
$fullname=mysqli_real_escape_string($conn,$_POST["fullname"]);
$gender=mysqli_real_escape_string($conn,$_POST["gender"]);
$phone=mysqli_real_escape_string($conn,$_POST["phone"]);
$email=mysqli_real_escape_string($conn,$_POST["email"]);
$username=mysqli_real_escape_string($conn,$_POST["username"]);

$updateq="UPDATE new_user SET fullname='$fullname',photo='$photo',gender='$gender',phone='$phone',username='$username',email='$email' WHERE id='".$_SESSION['alogin']."'";
	$run_updateq=mysqli_query($conn,$updateq);
	if($run_updateq)
	{
		$message="UPDATED";
		
	}
	else
	{
		$mess="NOT UPDATE ".mysqli_connect_error($run_updateq);
	}
	
}
?>



<?php  
						$queryselect=mysqli_query($conn,"SELECT * FROM new_user WHERE id='".$_SESSION['alogin']."'");
						while($row=mysqli_fetch_array($queryselect)){
						?>
<form method="post" enctype="multipart/form-data">
<div style="background-color:#d4cfcf;padding:25px;margin-left:250px;"class="row">
					<div style="margin-top:60px"class="col-xl-4 col-lg-4 col-md-4 col-sm-12 mb-30">
						
						<div class="pd-20 card-box height-100-p">
							<div class="profile-photo">
								
								<img style="border-radius:50%;width:350px;height:100%" src="../NewsPhoto/<?php if($row['photo']==""){echo "noimage.png";}else{echo $row['photo'];} ?>" alt="profile picture">
								 <br><br>
								 <input style="color:black" type="file" accept="image/*" name="photo"><br>
								
							
							</div><br><br>
							<h5 style="color:black" class="text-center h5 mb-0"><?php echo $row['fullname'] ?></h5>
							
							<div class="profile-info">
								<h5 style="color:black" class="mb-20 h5 text-blue">Contact Information</h5>
								<ul>
									<li style="color:black">
										<span style="color:black">Email Address:</span>
										<?php echo $row['email'] ?>
									</li>
									<li style="color:black">
										<span style="color:black">Phone Number:</span>
										<?php echo $row['phone'] ?>
									</li>
									
								</ul>
							</div>
						
						
						</div>
					</div>
					<div style="margin-top:60px"class="col-xl-8 col-lg-8 col-md-8 col-sm-12 mb-30">
					
						<div class="card-box height-100-p overflow-hidden">
							<div class="col-md-12 col-sm-4">
								<div class="form-group">
									<label>Full Name</label>
									<input type="text" name="fullname" class="form-control"required value="<?php echo $row['fullname']?>">
								</div>
								</div>
									<div class="col-md-12 col-sm-4">
								<div class="form-group">
									<label>Gender</label>
									<input type="text" name="gender" class="form-control"required value="<?php echo $row['gender']?>">
								</div>
							</div>	
							<div class="col-md-12 col-sm-4">
								<div class="form-group">
									<label>Phone number</label>
									<input type="text" name="phone" class="form-control" required value="<?php echo $row['phone']?>">
								</div>
								</div>
									<div class="col-md-12 col-sm-4">
								<div class="form-group">
									<label>E-mail</label>
									<input type="email" name="email" class="form-control" required value="<?php echo $row['email']?>">
								</div>
								</div>
								<div class="col-md-12 col-sm-4">
								<div class="form-group">
									<label>Username</label>
									<input type="text" name="username" class="form-control" required value="<?php echo $row['username']?>">
								</div>
							</div>	
							
							<div class="col-md-6 col-sm-12">
							<input style="margin-left:150px" class="btn btn-primary btn-lg btn-block" type="submit" name="update" value="Save and Change">
							<br><br>
							</div>
							<span><?php echo $mess; ?></span>
						</div>
						
					</div>
				</div>
</form>
						<?php } ?>

											
<script src="vendors/scripts/core.js"></script>
	<script src="vendors/scripts/script.min.js"></script>
	<script src="vendors/scripts/process.js"></script>
	<script src="vendors/scripts/layout-settings.js"></script>

<?php include"adminfooter.php"; ?>