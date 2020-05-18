<?php  
$conn = mysqli_connect("localhost", "root", "", "final");
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
echo "Connected successfully";// Check connection

if(isset($_POST["submit1"])) {
    if($_FILES['file']['name']) {
        $filename = explode(".", $_FILES['file']['name']);
        if($filename[1] == 'csv') {
            $handle = fopen($_FILES['file']['tmp_name'], "r");
            $query_drop = "DELETE FROM sections;";
            if (!mysqli_query($conn, $query_drop)) {
                    echo("Error description: " . mysqli_error($conn));
            }
            while($data = fgetcsv($handle)) {
                $item1 = mysqli_real_escape_string($conn, $data[0]);  
                $item2 = mysqli_real_escape_string($conn, $data[1]);
                $query_insert = "INSERT into sections(courseId, noDays) values('$item1','$item2'); ";
                if (!mysqli_query($conn, $query_insert)) {
                    echo("Error description: " . mysqli_error($conn));
                }
            }
            fclose($handle);
            echo "<script>alert('Import done');</script>";
        }
    }
}

if(isset($_POST["submit2"])) {
    if($_FILES['file']['name']) {
        $filename = explode(".", $_FILES['file']['name']);
        if($filename[1] == 'csv') {
            $handle = fopen($_FILES['file']['tmp_name'], "r");
            $query_drop = "DELETE FROM rooms;";
            if (!mysqli_query($conn, $query_drop)) {
                    echo("Error description: " . mysqli_error($conn));
            }
            while($data = fgetcsv($handle)) {
                $item1 = mysqli_real_escape_string($conn, $data[0]);  
                $query_insert = "INSERT into rooms(room) values('$item1'); ";
                if (!mysqli_query($conn, $query_insert)) {
                    echo("Error description: " . mysqli_error($conn));
                }
            }
            fclose($handle);
            echo "<script>alert('Import done');</script>";
        }
    }
}


?>  
<!DOCTYPE html>  
<html>  
    <head>  
        <title>CSC Class Scheduling</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>  
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    </head>  
    <body>  
        <h3 align="center">CSC Class Scheduling</h3><br />
        <form method="post" enctype="multipart/form-data">
            <div align="left">  
                <label>Upload Sections to Schedule CSV File:</label>
                <input type="file" name="file" />
                <br />
                <input type="submit" name="submit1" value="Import" class="btn btn-info" />
            </div>
        </form>
        <form method="post" enctype="multipart/form-data">
            <div align="left">  
                <label>Upload Rooms Available CSV File:</label>
                <input type="file" name="file" />
                <br />
                <input type="submit" name="submit2" value="Import" class="btn btn-info" />
            </div>
        </form>
           <form method="post" enctype="multipart/form-data">
            <div align="left">  
                <label>Click Button to Schedule Classes:</label>
                <br />
                <input type="submit" name="schedule" value="Schedule" class="btn btn-info" />
            </div>
        </form>
    </body>
</html>

<?php
if(isset($_POST["schedule"]) || isset($_POST["view"])) {
    ?>
    <form method = "post">
            <div align="left">
                <p>Select Room to View</p>
                <select name="room">
                <?php 
                    $sql = mysqli_query($conn, "SELECT room FROM rooms");
                    while ($row = $sql->fetch_assoc()){
                        echo "<option value=" . $row['room'] . "> ".$row['room'] ."</option>";
                    }
                ?>
                </select>
                <p>Select Day of the week to View</p>
                <select name="day">
                <?php 
                    $sql = mysqli_query($conn, "SELECT day FROM days");
                    echo "<option value=\"All Week\">All Week</option>";
                    while ($row = $sql->fetch_assoc()){
                        echo "<option value=" . $row['day'] . "> ".$row['day'] ."</option>";
                    }
                ?>
                </select>
                <br />
                <input type ="submit" name="view" value = "View">
            </div>
        </form>
    <?php
}

if(isset($_POST["view"])) {
    $room = $_POST['room'];
    $day = $_POST['day'];
    echo $room;
    echo " ";
    echo $day;

    $rows = 15;
    $cols = 8;

    if ($day != "All Week") {
        $cols = 2;
    }

    $makeTable = '';
    $makeTable .= '<table border="1">';

    for ($i = 0; $i < $rows; $i++) {
        $makeTable .= '<tr>';
        for ($j = 0; $j < $cols; $j++) {
            $makeTable .= '<td width="50">&nbsp;test</td>';
        }
        $makeTable .= '</tr>';
    }
    $makeTable .= '</table>';
    echo $makeTable;
}
?>  