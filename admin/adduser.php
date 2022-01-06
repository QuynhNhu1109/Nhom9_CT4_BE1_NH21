<?php 
 require "config.php";
 require "models/db.php";
 require "models/user.php";
 require "models/product.php";
 $product = new Product;
 $user = new User;
 if(isset($_POST['submit'])){
    $Name = $_POST['User_Name'];
    $Password = $_POST['User_Password'];
    $Role = $_POST['Role'];
    $product->addUser($Name,$Password,$Role);
 }
 header('location:addU.php');
