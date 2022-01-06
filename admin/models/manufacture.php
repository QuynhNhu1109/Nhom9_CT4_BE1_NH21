<?php  
class Manufacture extends Db{
    public function getAllManu()
    {
        $sql = self::$connection->prepare("SELECT * FROM mannufactures");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function editManu($name){
        $sql = self:: $connection-> prepare("UPDATE' mannufacter' SET 'manu_name' = ?");
        $sql-> bind_param("s",$name);
        return $sql->execute(); //return an object
    }
    public function addManu($name)
    {   
        $sql = self::$connection->prepare("INSERT 
        INTO `mannufactures`( `manu_name`) 
        VALUES (?)");
        $sql->bind_param("s", $name);
        return $sql->execute(); //return an object
    }
    public function delManu($manu_id)
    {
        $sql = self::$connection->prepare("DELETE FROM `mannufactures` WHERE `manu_id` =?");
        $sql->bind_param("i", $manu_id);
        return $sql->execute(); //return an object
    }
    public function getManuByID($name)
    {
        $sql = self::$connection->prepare("SELECT * FROM mannufactures WHERE manu_name ");
        $sql->bind_param("s",$name);
        $sql ->execute(); //return an object
        $items = array();
        $items = $sql ->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items;// return an array
    }
}
