<?php class Product extends Db
{
    public function getAllProducts()
    {
        $sql = self::$connection->prepare("SELECT * 
        FROM products,mannufactures,protypes
        WHERE products.manu_id=mannufactures.manu_id
        AND products.type_id=protypes.type_id ORDER BY `products`.`id` DESC");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function addProduct($name,$manu_id,$type_id,$price,$image,$desc)
    {
        $sql = self::$connection->prepare("INSERT INTO `products`(`name`, `manu_id`, `type_id`, `price`, `image`, `description`) 
        VALUES (?,?,?,?,?,?)");
        $sql->bind_param("siiiss", $name,$manu_id,$type_id,$price,$image,$desc);
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
    public function delProduct($id)
    {
        $sql = self::$connection->prepare("DELETE FROM `products` WHERE `products`.`id` =?");
        $sql->bind_param("i", $id);
        return $sql->execute(); //return an object
    }

    public function editProduct($name, $manu_id,$type_id,$price,$image,$desc)
    {
        if ($image == "") {
            $sql = self::$connection->prepare(" UPDATE `products` SET 
            `name`=?,`manu_id`=?,`type_id`=?,
              `price`=?,`description`=?,`feature_at`=?
               WHERE `id`=?
              ");
            $sql->bind_param("siiiss",$name, $manu_id, $type_id, $price, $image, $desc);
        } else {
            $sql = self::$connection->prepare(" UPDATE `products` SET 
      `name`=?,`manu_id`=?,`type_id`=?,
        `price`=?,`image`=?,`description`=?
         WHERE `id`=?
        ");
            $sql->bind_param("siiiss",$name, $manu_id, $type_id, $price, $image, $desc);
        }

        return $sql->execute(); //return an object
    }
    //Lấy sản phẩm theo id 
    public function getProductById($id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE id = ?");
        $sql->bind_param("i", $id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function editManu($name){
        $sql = self:: $connection-> prepare("UPDATE 'mannufactures' SET 'manu_name' = ?");
        $sql-> bind_param("si",$name, $id);
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
