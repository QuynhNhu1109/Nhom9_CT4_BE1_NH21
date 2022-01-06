<?php 
 require "config.php";
 require "models/db.php";
 require "models/product.php";
$user = new User;
if(isset($_GET['user'])){
    
    $user->delUser($_GET['user']);
}
header('location:user.php');