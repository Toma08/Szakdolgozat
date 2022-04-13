<?php
session_start();
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">
    
             
    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="https://icono-49d6.kxcdn.com/icono.min.css" />
        <!-- Style CSS -->
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="cs/logreg.css">
    <title></title>
    <style>
        #tartalom{
            display:flex;
        }
        #kepecske{
            max-width: 100%
            height: auto;
        }

       
        
    </style>
</head>
<body>
<div id="menu" class="container-fluid">
        <nav  class="navbar navbar-expand-sm navbar-dark bg-black w-100">
            <ul class="navbar-nav">
                <li class="nav-item"><a href="index.php" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="index.php?program=music.php" class="nav-link">Samplepacks</a></li>
                <li class="nav-item"><a href="index.php?program=music2.php" class="nav-link">Musics</a></li>

                <?php 
                    if(isset($_SESSION['username'])):
                  ?>
                 <li class="nav-item"><a href="../server/logout.php" class="nav-link">Logout</a></li>
                 <li class="nav-item"><a href="#" class="nav-link"><?=$_SESSION['username']?></a></li>
                 <?php
                    else:
                  ?>
                <li class="nav-item"><a href="index.php?program=./cs/logreg.php" class="nav-link">Log/Reg</a></li>

                <?php
                  endif;
                  ?>
               
                
            </ul>
        </nav>
    </div>
    
    <div  >
    <?php
        if(isset($_GET["program"]))
            include $_GET["program"];
        else
            include "fooldal.php";
            //print_r($_SESSION);
            
        ?>
        

    </div>
    <script src="red.js"></script>
</body>
</html>