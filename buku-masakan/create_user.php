<?php
$conn = new mysqli('localhost', 'root', '', 'cookbook');

if ($conn->connect_error) {
    die('Connection failed: ' . $conn->connect_error);
}

$username = 'testuser';
$password = password_hash('testpassword', PASSWORD_DEFAULT); // Hashing password here
$fullname = 'Test User';

$sql = "INSERT INTO users (username, password, fullname) VALUES (?, ?, ?)";
$stmt = $conn->prepare($sql);
$stmt->bind_param('sss', $username, $password, $fullname);

if ($stmt->execute()) {
    echo 'User created successfully';
} else {
    echo 'Error: ' . $stmt->error;
}

$conn->close();
?>
