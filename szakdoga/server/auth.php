<?php
session_start();
header('AccessControl-Allow-Origin:*');
header('Content-Type: application/json');

require_once 'db.php';

if($_SERVER['REQUEST_METHOD']== 'POST' && $_POST['type']=='register')
    register($db);

if($_SERVER['REQUEST_METHOD']== 'POST' && $_POST['type']=='checkUsername')
   checkUsername($db);

if($_SERVER['REQUEST_METHOD']== 'POST' && $_POST['type']=='checkEmail')
   checkEmail($db);

if($_SERVER['REQUEST_METHOD']== 'POST' && $_POST['type']=='login')
   login($db);
   
function register($db){
    extract($_POST);
    $pw=password_hash($password,PASSWORD_DEFAULT);
    $sql="insert into users (username,email,password) values(?,?,?)";
    $stmt=$db->prepare($sql);
    $stmt->execute([$username,$email,$pw]);
    if($stmt){
        echo true;

    }else{
        echo false;
    }
}

function checkUsername($db){
    //$username=$_POST["username"];
    extract($_POST);
    $sql="select * from users where username=?";
    $stmt=$db->prepare($sql);
    $stmt->execute([$username]);
    if($stmt->rowCount()==0)
            echo true;
    else
            echo false;
}

function checkEmail($db){
    //$username=$_POST["username"];
    extract($_POST);
    $sql="select * from users where email=?";
    $stmt=$db->prepare($sql);
    $stmt->execute([$email]);
    if($stmt->rowCount()==0)
            echo true;
    else
            echo false;
}

function login($db){
    //$username=$_POST["username"];
    extract($_POST);
    $sql="select password,role from users where username=?";
    $stmt=$db->prepare($sql);
    $stmt->execute([$username]);
    if($stmt->rowCount()==1){
        $row=$stmt->fetch();//az adatbázis sora kerül ide
        $isValid=password_verify($password,$row['password']);
        if($isValid){
            $_SESSION['username']=$username;
            echo true;
        }
           
        else
            echo false;
    }else
        echo false;
        
}

?>
