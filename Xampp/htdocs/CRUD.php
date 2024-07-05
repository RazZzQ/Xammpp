<!DOCTYPE html>
<html>
    <body>
        <h1>Prueba Insana Para Insanos</h1>
        <?php
        $servername = "localhost";
        $username = "root";
        $password = "";
        $dbname = "login";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Get the raw POST data
        $postData = file_get_contents("php://input");

        // Decode the JSON data
        $data = json_decode($postData, true);

        if (json_last_error() === JSON_ERROR_NONE) {
            if (isset($data['action'])) {
                $action = $data['action'];

                switch ($action) {
                    case 'create':
                        if (isset($data['usuario']) && isset($data['password']) && isset($data['created_by'])) {
                            $usuario = $data['usuario'];
                            $password = $data['password'];
                            $created_by = $data['created_by'];

                            // Prepare the stored procedure call for Create
                            $stmt = $conn->prepare("CALL CrearLogin(?, ?, ?)");

                            if ($stmt === false) {
                                echo json_encode(["error" => "Prepare failed: " . $conn->error]);
                                exit();
                            }

                            $stmt->bind_param('sss', $usuario, $password, $created_by);

                            if ($stmt->execute()) {
                                echo json_encode(["message" => "New user inserted successfully"]);
                            } else {
                                echo json_encode(["error" => "Execute failed: " . $stmt->error]);
                            }

                            $stmt->close();
                        } else {
                            echo json_encode(["error" => "Invalid input data"]);
                        }
                        break;

                    case 'read':
                        if (isset($data['id'])) {
                            $id = $data['id'];

                            // Prepare the stored procedure call for Read
                            $stmt = $conn->prepare("CALL LeerLogin(?)");

                            if ($stmt === false) {
                                echo json_encode(["error" => "Prepare failed: " . $conn->error]);
                                exit();
                            }

                            $stmt->bind_param('s', $id);

                            if ($stmt->execute()) {
                                $result = $stmt->get_result();
                                $userData = $result->fetch_assoc();
                                echo json_encode($userData);
                            } else {
                                echo json_encode(["error" => "Execute failed: " . $stmt->error]);
                            }

                            $stmt->close();
                        } else {
                            echo json_encode(["error" => "Invalid input data"]);
                        }
                        break;

                    case 'update':
                        if (isset($data['id']) && isset($data['usuario']) && isset($data['password']) && isset($data['modified_by'])) {
                            $id = $data['id'];
                            $usuario = $data['usuario'];
                            $password = $data['password'];
                            $modified_by = $data['modified_by'];

                            // Prepare the stored procedure call for Update
                            $stmt = $conn->prepare("CALL ActualizarLogin(?, ?, ?, ?)");

                            if ($stmt === false) {
                                echo json_encode(["error" => "Prepare failed: " . $conn->error]);
                                exit();
                            }

                            $stmt->bind_param('ssss', $id, $usuario, $password, $modified_by);

                            if ($stmt->execute()) {
                                echo json_encode(["message" => "User updated successfully"]);
                            } else {
                                echo json_encode(["error" => "Execute failed: " . $stmt->error]);
                            }

                            $stmt->close();
                        } else {
                            echo json_encode(["error" => "Invalid input data"]);
                        }
                        break;

                    case 'delete':
                        if (isset($data['id'])) {
                            $id = $data['id'];

                            // Prepare the stored procedure call for Delete
                            $stmt = $conn->prepare("CALL EliminarLogin(?)");

                            if ($stmt === false) {
                                echo json_encode(["error" => "Prepare failed: " . $conn->error]);
                                exit();
                            }

                            $stmt->bind_param('s', $id);

                            if ($stmt->execute()) {
                                echo json_encode(["message" => "User deleted successfully"]);
                            } else {
                                echo json_encode(["error" => "Execute failed: " . $stmt->error]);
                            }

                            $stmt->close();
                        } else {
                            echo json_encode(["error" => "Invalid input data"]);
                        }
                        break;

                    default:
                        echo json_encode(["error" => "Invalid action"]);
                        break;
                }
            } else {
                echo json_encode(["error" => "Action not specified"]);
            }
        } else {
            echo json_encode(["error" => "JSON decode error: " . json_last_error_msg()]);
        }

        // Close the connection
        $conn->close();
        ?>
    </body>
</html>