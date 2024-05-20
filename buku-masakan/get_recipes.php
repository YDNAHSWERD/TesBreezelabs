<?php
$conn = new mysqli('localhost', 'root', '', 'cookbook');

if ($conn->connect_error) {
    die(json_encode(['success' => false, 'message' => 'Connection failed: ' . $conn->connect_error]));
}

// Query untuk mengambil data resep beserta lokasi file gambar dari database
$sql = "SELECT id, name, type, rating, difficulty, CONCAT('image/', photo) AS image FROM recipes";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    $recipes = [];
    while ($row = $result->fetch_assoc()) {
        $recipes[] = $row;
    }
    echo json_encode(['recipes' => $recipes]);
} else {
    echo json_encode(['recipes' => []]);
}

$conn->close();
?>
