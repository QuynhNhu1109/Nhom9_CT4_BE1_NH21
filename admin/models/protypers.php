<?php  
class Protypes extends Db{
    public function getAllProtypes()
    {
        $sql = self::$connection->prepare("SELECT * FROM protypes");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function addProduct($name, $manu_id, $type_id, $price, $image, $desc, $feature_at)
    {
        $sql = self::$connection->prepare("INSERT 
        INTO `products`(`name`, `manu_id`, `type_id`, `price`, `image`, `description`,`feature_at`) 
        VALUES (?,?,?,?,?,?,?)");
        $sql->bind_param("siiissi", $name, $manu_id, $type_id, $price, $image, $desc, $feature_at);
        return $sql->execute(); //return an object
    }
    public function addProType($name)
    {   
        $sql = self::$connection->prepare("INSERT 
        INTO`protypes`( `type_name`) 
        VALUES (?)");
        $sql->bind_param("s", $name);
        return $sql->execute(); //return an object
    }
    public function delProtype($type_id)
    {
        $sql = self::$connection->prepare("DELETE FROM `protypes` WHERE `type_id` =?");
        $sql->bind_param("i", $type_id);
        return $sql->execute(); //return an object
    }
}