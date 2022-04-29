<?php
session_start();
header('AccessControl-Allow-Origin:*');
header('Content-Type: application/json');


require_once 'db.php';
$genre=$_GET['cgenre'];
if($genre == "all")
    $sql="SELECT musicdata.name ,musicdata.id,genres.genrename as genre,musicdata.musicurl,musicdata.cpicurl,musicdata.zipurl,musicdata.bpm as bpersec FROM musicdata inner join genres on musicdata.genreid=genres.id";
else
    $sql="SELECT musicdata.name ,musicdata.id,genres.genrename as genre,musicdata.musicurl,musicdata.cpicurl,musicdata.zipurl,musicdata.bpm as bpersec FROM musicdata inner join genres on musicdata.genreid=genres.id where genreid='{$genre}'";



$stmt=$db->query($sql);

echo json_encode($stmt->fetchAll());


?>