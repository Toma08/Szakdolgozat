<?php
session_start();
header('AccessControl-Allow-Origin:*');
header('Content-Type: application/json');


require_once 'db.php';

$sql="SELECT name ,id,genre,url,cpic,zip FROM mdata";



$stmt=$db->query($sql);

echo json_encode($stmt->fetchAll());


?>