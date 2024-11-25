<?php 
session_start(); 
include '../Config/config.php';

if (isset($_POST['username']) && isset($_POST['password'])
    && isset($_POST['email']) && isset($_POST['cpassword'])) {

	function validate($data){
       $data = trim($data);
	   $data = stripslashes($data);
	   $data = htmlspecialchars($data);
	   return $data;
	}


    
	echo $fname = validate($_POST['fname']);
	echo "<br>";
	echo $lname = validate($_POST['lname']);
	echo "<br>";
	echo $schoolid = validate($_POST['schoolId']);
	echo "<br>";
	echo $username = validate($_POST['username']);
	echo "<br>";
	echo $email = validate($_POST['email']);
	echo "<br>";
	echo $districtid = validate($_POST['district']);
	echo "<br>";

	echo $aaa = "SELECT * FROM school WHERE school_id = '".$schoolid."'";
	$result = mysqli_query($data, $aaa);
	$getresult = mysqli_fetch_array($result);
	echo "<br>";

	echo $schoolids = $getresult['school_name'];
	echo "<br>";
	echo $pnumber = validate($_POST['pnumber']);
	echo "<br>";
	echo $password = validate($_POST['password']);
	echo "<br>";
	echo $cpassword = validate($_POST['cpassword']);



	// $sql1 = "SELECT * from district WHERE id='$districtid'";
    // $result_district = $data->query($sql1);
    // $row_district=mysqli_fetch_assoc($result_district);

    // $district_name= $row_district['district_name'];


    // $sql2 = "SELECT * from school WHERE id='$schoolids'";
    // $result_school = $data->query($sql2);
    // $row_district=mysqli_fetch_assoc($result_school);

    // $school_name= $row_district['school_name'];



	$user_data = 'username='. $username. '&email='. $email. '&fname='. $fname. '&lname='. $lname. '&schoolid='. $userID  ;


	if (empty($username)) {
		header("Location: ../signup.php?error=User Name is required&$user_data");
	    exit();
	}else if(empty($password)){
        header("Location: ../signup.php?error=Password is required&$user_data");
	    exit();
	}
	else if(empty($cpassword)){
        header("Location: ../signup.php?error=Re Password is required&$user_data");
	    exit();
	}
			else if(empty($email)){
        header("Location: ../signup.php?error=Email is required&$user_data");
	    exit();
	 }
		else if(empty($fname)){
       header("Location: ../signup.php?error=First name is required&$user_data");
	     exit();
	}
	 else if(empty($lname)){
         header("Location: ../signup.php?error=Last name is required&$user_data");
	     exit();
	 }
		else if(empty($pnumber)){
        header("Location: ../signup.php?error=Phone Number is required&$user_data");
	    exit();
	}
	else if($password != $cpassword){
        header("Location: ../signup.php?error=The confirmation password  does not match&$user_data");
	    exit();
	}


	else{


	    $sql = "SELECT * FROM users WHERE username='$username' ";
		$result = mysqli_query($data, $sql);

		if (mysqli_num_rows($result) > 0) {
			header("Location: ../signup.php?error=The username is taken try another&$user_data");
	        exit();
		}else{
			$sql2 = "INSERT INTO users (firstName,lastName,contact,school_id,district,school,username,email,password,role) 

			VALUES

			('".$fname."','".$lname."','".$pnumber."','".$schoolid."','".$districtid."','".$schoolids."','".$username."','".$email."','".$password."','user')";
			$result2 = mysqli_query($data, $sql2);
			if ($result2){
					header("Location: ../signup.php?success=Your account has been created");
	        exit();
	        }else{
	        		header("Location: ../signup.php?error=Your account has been not inserted ");

	        exit();
	        }
	        echo "ok";
		}
	}
}


else{
	header("Location: ../signup.php");
	exit();
	}
?>