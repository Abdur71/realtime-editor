<?php
include 'db.php';
$data = json_decode(file_get_contents("php://input"), true);
$content = $conn->real_escape_string($data['content']);
$label = isset($data['label']) ? $conn->real_escape_string($data['label']) : 'Auto-save';

$conn->query("UPDATE documents SET content='$content', updatedAt=NOW() WHERE id=1");
$conn->query("INSERT INTO versions (content, updatedAt, label) VALUES ('$content', NOW(), '$label')");

echo json_encode(["status" => "success"]);
?>