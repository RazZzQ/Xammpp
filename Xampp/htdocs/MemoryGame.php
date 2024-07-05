<!DOCTYPE html>
<html>
    <body>
        <?php
        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: POST');
        header('Access-Control-Allow-Headers: Content-Type');
        require 'db.php';
        $data = json_decode(file_get_contents('php://input'), true);
        if (isset($data['name']) && isset($data['time'])) {
            $name = $data['name'];
            $time = $data['time'];
        
            $sql = "CALL AddMemoryGameScore('$name', $time)";
        
            if ($conn->query($sql) === TRUE) {
                echo json_encode(array("message" => "Score submitted successfully"));
            } else {
                echo json_encode(array("message" => "Error: " . $sql . "<br>" . $conn->error));
            }
        } else {
            echo json_encode(array("message" => "Invalid input"));
        }
        $conn->close();
        ?>
    </body>
</html>