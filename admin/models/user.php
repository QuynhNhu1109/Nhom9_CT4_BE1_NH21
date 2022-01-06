<?php class User extends Db
{
    public function login()
    {
        $sql = self::$connection->prepare("SELECT * FROM user");
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
        return $items; //return an array
    }

    public function checkLogin($User_Name, $User_Password)
     {
        $sql = self::$connection->prepare("SELECT * FROM user
        WHERE `User_Name`=? AND `User_Password`=?");
        $User_Password = md5($User_Password);
        $sql->bind_param("ss", $User_Name, $User_Password);
        $sql->execute(); //return an object
        $items = array();
        $items = $sql->get_result()->num_rows;
        if($items == 1){
            return true;
        }
        else{
            return false;
        }
     }
     public function getAllUser()
     {
         $sql = self::$connection->prepare("SELECT * FROM user");
         $sql->execute(); //return an object
         $items = array();
         $items = $sql->get_result()->fetch_all(MYSQLI_ASSOC);
         return $items; //return an array
     }
     public function addUser($User_Name,$User_Password,$Role)
     {
         $sql = self::$connection->prepare("INSERT INTO 
         `user`(`User_Name`, `User_Password`, `Role`)
         VALUES (?,?,?,?)");
          $sql->bind_param("isii",$User_Name,$User_Password,$Role);
        return $sql->execute(); //return an object
     }
    
    //Phuong thuc xoa nguoi dung
    public function delUser($id)
    {
        $sql = self::$connection->prepare("DELETE FROM `user` WHERE User_id=?");
        $sql->bind_param('i',$id);
        return $sql->execute();
    }
}
