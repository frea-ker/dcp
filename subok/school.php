<?php
// Create a database connection
$dbHost = 'localhost';
$dbUser = 'root';
$dbPassword = '';
$dbName = 'deped';

$conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['district_id'])) {
    $query = "SELECT * FROM school WHERE c_id='" . $_POST['district_id'] . "'";
    $result = $conn->query($query);
    if ($result->num_rows > 0) {
        echo '<option value="">Select School</option>';
        while ($row = $result->fetch_assoc()) {
            echo '<option value="' . $row['school_name'] . '">' . $row['school_name'] . '</option>';
        }
    } else {
        echo '<option value="">No schools found</option>';
    }
}
?>
