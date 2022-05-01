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
    <link rel="icon" href="icon.png">
    
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
    


        <nav  class="navba">
            <div class="brand-title"><li class=""><a href="index.php" class=""><img class="logo "  src="logoka2.png" alt=""></a></li></div>
            <a href="#" class="toggl-buttons">
                <span class="ba"></span>
                <span class="ba"></span>
                <span class="ba"></span>
            </a>
            <div class="navba-links">
                <ul>
                    <li class=""><a href="index.php" class="">Home</a></li>
                    <li class=""><a href="index.php?program=music.php" class="">Sample Packs</a></li>
                    <li class=""><a href="index.php?program=music2.php" class="">Music</a></li>
                        <?php 
                            if(isset($_SESSION['username'])):
                        ?>
                    <li class=""><a href="../server/logout.php" class="">Logout</a></li>
                    <li class=""><a href="#" class=""><?=$_SESSION['username']?></a></li>
                        <?php
                            else:
                        ?>
                    <li class=""><a href="index.php?program=./cs/logreg.php" class="">Log/Reg</a></li>
                        <?php
                        endif;
                        ?>
                </ul>
            </div>        
        </nav>
    
    <div class="container-fluid p-0 m-0" >
    <?php
        if(isset($_GET["program"]))
            include $_GET["program"];
        else
            include "fooldal.php";
            //print_r($_SESSION);
            
        ?>
        

        <div class="particle-js">
    </div>
    </div>
    <script src="cs/particles.js">  </script>
    <script src="red.js"></script>.
    <script src="resp.js"></script>
</body>
</html>