<?php
include 'db.php';
$sql = "SELECT content, updatedAt FROM versions ORDER BY updatedAt DESC LIMIT 10";
$result = $conn->query($sql);
$rows = [];
while ($row = $result->fetch_assoc()) {
  $rows[] = $row;
}
echo json_encode($rows);
?>