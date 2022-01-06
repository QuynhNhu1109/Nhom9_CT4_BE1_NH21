<?php
 require "config.php";
 require "models/db.php";
 require "models/manufacture.php";
$manu = new Manufacture;
echo $_GET['manu_id'];
if(isset($_POST['submit'])){
    $id = $_GET['manu_id'];
    $name = $_POST['manu_name'];
    }
    // thêm
    $manu->editManu($name, $id);
header('location:manufacture.php');