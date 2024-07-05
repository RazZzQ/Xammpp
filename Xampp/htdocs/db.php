<!DOCTYPE html>
<html>
    <body>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "tfcloud";
        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Get the raw POST data
        //$postData = file_get_contents("php://input");

        // Decode the JSON data
        //$data = json_decode($postData, true);
        
        ?>
    </body>
</html>
