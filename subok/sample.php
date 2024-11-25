<!DOCTYPE html>
<html>
<head>
    <title>Table Filter</title>
</head>
<body>
    <form method="GET">
        <label for="districtDropdown">Select District:</label>
        <select name="district" id="districtDropdown">
            <option value="">All</option>
            <option value="Los Banos">Los Banos</option>
            <!-- Add more district options as needed -->
        </select>

        <label for="schoolDropdown">Select School:</label>
        <select name="school" id="schoolDropdown">
            <option value="">All</option>
            <!-- Schools for Santacruz district -->
            <option value="MAAHAS ELEMENTARY SCHOOL">MAAHAS ELEMENTARY SCHOOL</option>
            <option value="school2">School 2</option>
            <!-- Add more school options for other districts as needed -->
        </select>

        <input type="submit" value="Filter">
    </form>

    <table>
        <?php
        // Handle form submission and database query
        if (isset($_GET['district']) || isset($_GET['school'])) {
            $selectedDistrict = $_GET['district'] ?? '';
            $selectedSchool = $_GET['school'] ?? '';

            // Create a database connection
            $dbHost = 'localhost';
            $dbUser = 'root';
            $dbPassword = '';
            $dbName = 'deped';

            $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

            if ($conn->connect_error) {
                die("Connection failed: " . $conn->connect_error);
            }

            // Build and execute the database query
         $query = "SELECT * FROM tblpackages WHERE ('$selectedDistrict' = '' OR district = '$selectedDistrict') AND ('$selectedSchool' = '' OR school_name = '$selectedSchool')";
$result = $conn->query($query);

            if ($result->num_rows > 0) {
                echo '<thead><tr><th>District</th><th>School</th><th>Data</th></tr></thead><tbody>';

                while ($row = $result->fetch_assoc()) {
                    echo "<tr><td>{$row['district']}</td><td>{$row['school_name']}</td><td>{$row['item']}</td></tr>";
                }

                echo '</tbody>';
            } else {
                echo '<tr><td colspan="3">No results found.</td></tr>';
            }

            $conn->close();
        } else {
            echo '<thead><tr><th>District</th><th>School</th><th>Data</th></tr></thead><tbody></tbody>';
        }
        ?>
    </table>
</body>
</html>
