<?php
$conn = new mysqli('localhost', 'root', '', 'cookbook');

if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Connection failed: ' . $conn->connect_error]));
}

$id = $_GET['id'];

$sql = "SELECT * FROM recipes WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param('i', $id);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows > 0) {
    $recipe = $result->fetch_assoc();
    echo json_encode(['success' => true, 'recipe' => $recipe]);
} else {
    echo json_encode(['success' => false, 'message' => 'Recipe not found']);
}

$conn->close();
?>
