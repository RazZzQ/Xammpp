<!DOCTYPE html>
<html>
    <body>
        <?php
        require 'db.php';  // Incluir el archivo de conexión a la base de datos

        // Obtener los datos POST crudos
        $postData = file_get_contents("php://input");

        // Decodificar los datos JSON
        $data = json_decode($postData, true);
        $username = $data['username'] ?? '';
        $password = $data['password'] ?? '';
        $email = $data['email'] ?? '';

        if ($username && $password) {
            // Encriptar la contraseña utilizando SHA-256
            $passwordHash = hash('sha256', $password);

            $stmt = $conn->prepare("CALL InsertUser(?, ?, ?)");
            $stmt->bind_param("sss", $username, $passwordHash, $email);

            if ($stmt->execute()) {
                echo json_encode(['status' => 'success', 'message' => 'User inserted successfully']);
            } else {
                echo json_encode(['status' => 'error', 'message' => $stmt->error]);
            }

            $stmt->close();
        } else {
            echo json_encode(['status' => 'error', 'message' => 'Username and password are required']);
        }

        $conn->close();
        ?>
    </body>
</html>
