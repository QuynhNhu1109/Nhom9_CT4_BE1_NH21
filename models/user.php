<?php class User extends Db
{
    public function checkLogin($User_Name, $User_Password)
    {
       $sql = self::$connection->prepare("SELECT * FROM user
       WHERE `User_Name`=? AND `User_Password`=?");
       $User_Password = md5($User_Password);
       $sql->bind_param("ss", $User_Name, $User_Password);
       $sql->execute(); //return an object
        $items = $sql->get_result()->num_rows;
        if ($items == 1) {
            return true;
        } else return false;
    }
}