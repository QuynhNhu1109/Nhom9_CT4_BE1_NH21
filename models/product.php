<?php class Product extends Db
{
    public function getAllProducts()
    {
        $sql = self::$connection->prepare("SELECT * FROM products");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array

    }
    public function getProductById($id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE id = ?");
        $sql->bind_param("i", $id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    //Hàm count propertype
    function CountProductbyTypeId($type_id){
        $sql = self::$connection->prepare("SELECT COUNT(*) FROM products WHERE type_id=?");
        $sql->bind_param("i", $type_id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductsByManu($manu_id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE manu_id = ?");
        $sql->bind_param("i", $manu_id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function get3ProductsByManu($manu_id, $page, $perPage)
    {
        // Tính số thứ tự trang bắt đầu
        $firstLink = ($page - 1) * $perPage;
        $sql = self::$connection->prepare("SELECT * FROM products
        WHERE manu_id = ?  LIMIT ?,?");
        $sql->bind_param("iii", $manu_id, $firstLink, $perPage);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function search3($keyword,$page, $perPage){
        $firstLink = ($page - 1) * $perPage;
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `name` Like ? LIMIT ?,?");
        $keyword="%$keyword%";
        $sql ->bind_param('sss',$keyword,$firstLink, $perPage);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    function paginate($url, $total, $perPage)
    {
    $totalLinks = ceil($total/$perPage);
 	$link ="";
     $page =isset($_GET['page'])?$_GET['page']:1; 	
    	for($j=1; $j <= $totalLinks ; $j++)
     	{   
           if($j == $page){
      		$link = $link."<li style= 'background:#03a9f4'><a href='$url&page=$j'> $j </a></li>";
           }
           else{
            $link = $link."<li><a href='$url&page=$j'> $j </a></li>";
           }
     	}
     	return $link;
    }
    function getNewProduct()
    {
        $sql = self::$connection->prepare("SELECT * FROM  products ORDER BY `id` DESC LIMIT 10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    function search($keyword){
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `name` Like ?");
        $keyword="%$keyword%";
        $sql ->bind_param('s',$keyword);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getNew10Product()
    {
        $sql = self::$connection->prepare("SELECT * FROM  products ORDER BY `id` DESC LIMIT 10");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductLapTop(){
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`=2");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductPhones(){
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`=1");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductWatch(){
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`=3");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductTablet(){
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`=4");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    public function getProductPrint(){
        $sql = self::$connection->prepare("SELECT * FROM `products` WHERE `type_id`=6");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
    //Moi nhat
    public function getProductsByType($type_id)
    {
        $sql = self::$connection->prepare("SELECT * FROM products WHERE type_id = ? 
        ORDER BY `products`.`id` DESC");
        $sql->bind_param("i", $type_id);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }
}
?>

