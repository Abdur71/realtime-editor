<?php
include 'db.php';
$sql = "SELECT content FROM documents WHERE id=1";
$result = $conn->query($sql);
$row = $result->fetch_assoc();
echo json_encode($row);
?>