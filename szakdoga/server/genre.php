<?php
session_start();
header('AccessControl-Allow-Origin:*');
header('Content-Type: application/json');


require_once 'db.php';
$genre=$_GET['cgenre'];
if($genre == "all")
    $sql="SELECT genre,name,cpic,zip,url FROM mdata";
else
    $sql="SELECT genre,name,cpic,zip,url FROM mdata where genre='{$genre}'";



$stmt=$db->query($sql);

echo json_encode($stmt->fetchAll());


?>