<?php
include_once '../Config/config.php';



if($_POST['district_id']){
	$query = "SELECT * FROM  school  where c_id=".$_POST['district_id'];
	$result = $data->query($query);
	if ($result->num_rows > 0){
			echo '<option value="">Select School</option>';
		while ($row = $result->fetch_assoc()){
			echo '<option value='.$row['id'].'>'.$row['school_name'].'</option>';
		}
	}else{
		echo '<option>No School Found!</option>';
	}


}


?>