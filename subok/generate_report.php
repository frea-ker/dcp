<!DOCTYPE html>
<html>
<head>
    <title>Table Filter</title>
    <!-- Include Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <!-- Datatable Jquery -->
<script src="https://cdn.datatables.net/1.11.5/js/jquery.dataTables.min.js"></script>
<!-- Datatable CSS -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.min.css">

<!-- Sweet alert -->
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>


</head>
<body>
                           <?php
    $dbHost = 'localhost';
    $dbUser = 'root';
    $dbPassword = '';
    $dbName = 'deped';

    $conn = new mysqli($dbHost, $dbUser, $dbPassword, $dbName);

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

$query = "SELECT * FROM  school WHERE 1 AND c_id !='Other Agency' GROUP BY c_id order by c_id";
  $result = $conn->query($query);
?>


    <div class="container mt-4">

        <form method="GET">
            <div class="form-row">
                <div class="col-md-4">
                    <label for="districtDropdown">Select District:</label>
                  
                    <select name="district" id="districtDropdown" class="form-control" onchange="FetchSchool(this.value)">
                        <option value="">Select All District</option>

                        <?php

                          if ($result->num_rows > 0){
                     
                          while ($row = $result->fetch_assoc()){
                           echo '<option value='.$row['c_id'].'>'.$row['c_id'].'</option>';
                          }
                        }
                        ?>
                      </select>
                </div>
                <div class="col-md-4">
                    <label for="schoolDropdown">Select School:</label>
                    
                 <select class="form-control" id="schoolDropdown" name="school" onchange="FetchSchoolid(this.value)" placeholder="Enter your School" class="form-control">
                                 <option value="">Select All School</option>

                      </select>
                  <!--      <select class="form-control" id="schoolDropdown" name="school" placeholder="Enter your School" class="form-control">
                                 <option selected disabled>Select School</option>
                                  <option value="MAAHAS ELEMENTARY SCHOOL">MAAHAS ELEMENTARY SCHOOL</option>

                      </select> -->
                </div>
                <div class="col-md-4">
                    <button type="submit" class="btn btn-primary mt-4">Filter</button>
                </div>
            </div>
        </form>
        <br>

        <table class="table mt-4 mainTableToshowDataAndExport">

            <?php
                    $totalFunctional = 0;
                    $totalRepair = 0;
                    $totalCondemn = 0;
                    $totalStolen = 0;
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
                    echo '<thead>
                    <tr>
                    <th>#</th>
                    <th>District</th>
                    <th>School</th>
                    <th>Item</th>
                    <th>Quantity</th>
                    <th>Unit</th>
                    <th>Unit Price</th>
                    <th>Amount</th>
                    <th>Functional</th>
                    <th>Repair</th>
                    <th>Condemn</th>
                    <th>Stolen</th>
                    </tr>
                    </thead>
                    <tbody>';
                     $i = 1;
                    while ($row = $result->fetch_assoc()) {
                           $totalFunctional += intval($row['functional']);
                            $totalRepair += intval($row['repair']);
                            $totalCondemn += intval($row['condemn']);
                            $totalStolen += intval($row['stolen']);


                        echo "<tr>
                        <td>" . $i++ ."</td>
                        <td>{$row['district']}</td>
                        <td>{$row['school_name']}</td>
                        <td>{$row['item']}</td>
                        <td>{$row['quantity']}</td>
                        <td>{$row['unit']}</td>
                        <td>{$row['unit_price']}</td>
                        <td>{$row['Amount']}</td>
                        <td>{$row['functional']}</td>
                        <td>{$row['repair']}</td>
                        <td>{$row['condemn']}</td>
                        <td>{$row['stolen']}</td>
                        </tr>";
                           
                    }

                    echo '</tbody>';
                    echo '<tfoot>
                        <tr>
                            <td></td>
                            <td></td>
                           
                            <td>TOTAL OF FUNCTIONAL:</td>
                            <td>' . strval($totalFunctional) . '</td>
                            <td>TOTAL FOR REPAIR:</td>
                            <td>' . strval($totalRepair) . '</td>
                            <td>TOTAL FOR CONDEMN:</td>
                            <td>' . strval($totalCondemn) . '</td>
                            <td>TOTAL OF STOLEN:</td>
                            <td>' . strval($totalStolen) . '</td>
                        </tr>
                    </tfoot>';
                } else {
                    echo '<tr><td colspan="3">No results found.</td></tr>';
                }

                $conn->close();
            } else {
                echo '<thead><tr><th>District</th><th>School</th><th>Data</th></tr></thead><tbody></tbody>';
            }
            ?>
         
        </table>
    </div>

    <!-- Include Bootstrap JavaScript (optional, if needed) -->
    <!-- <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script> -->
    <!-- <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script> -->
    <!-- <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script> -->
</body>
</html>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.11.4/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.2/js/dataTables.buttons.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.html5.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/buttons/2.2.2/js/buttons.print.min.js"></script>

<script type="text/javascript">
    document.onkeydown = function(e) {
        if(event.keyCode == 123) {
            return false;
        }
        if(e.ctrlKey && e.shiftKey && e.keyCode == 'I'.charCodeAt(0)){
            return false;
        }
        if(e.ctrlKey && e.shiftKey && e.keyCode == 'J'.charCodeAt(0)){
            return false;
        }
        if(e.ctrlKey && e.keyCode == 'U'.charCodeAt(0)){
            return false;
        }
    }
</script>

<script type="text/javascript">
    //plain data table


    //datatable with export
    $(document).ready(function () {
    $('.mainTableToshowDataAndExport').DataTable({
        "pageLength": -1,
        order: [[0, 'desc']],
        dom: 'Bfrtip',
         buttons: [
                { extend: 'excelHtml5', footer: true},
                // { extend: 'pdfHtml5', footer: true},
                { extend: 'print', footer: true}
            ]
    });
    });
</script>

<script type="text/javascript">


    function FetchSchool(id) {
    $('#schoolDropdown').html('');
    $.ajax({
      type:'post',
      url: 'school.php',
      data : { district_id : id},
      success : function(data){
        $('#schoolDropdown').html(data);

          console.log(id);
      }

    })
    // body...
  }

  function FetchSchoolid(id){
      var a = $('#school').innerHTML;

        $('#schoolId').val(id);
        $('#schoolName').val(a);
  }
</script>