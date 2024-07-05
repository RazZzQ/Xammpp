<!DOCTYPE html>
<html>
    <body>
        <?php
        header('Content-Type: application/json');
        header('Access-Control-Allow-Origin: *');
        header('Access-Control-Allow-Methods: POST');
        header('Access-Control-Allow-Headers: Content-Type');
        include 'db.php';

        $data = json_decode(file_get_contents('php://input'), true);

        $name = $data['name'];
        $score = $data['score'];

        $sql = "CALL AddScoreGame3('$name', $score)";

        if ($conn->query($sql) === TRUE) {
            echo json_encode(array("message" => "Score submitted successfully"));
        } else {
            echo json_encode(array("message" => "Error: " . $sql . "<br>" . $conn->error));
        }

        $conn->close();
        ?>
    </body>
</html>