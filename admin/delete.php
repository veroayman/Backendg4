<?php
include_once("includes/logged.php");
if(isset($_GET["id"])){
 include_once("includes/conn.php");
$id = $_GET["id"];

       try{
          $sql = "DELETE FROM `newcars` WHERE id=?";
          $stmt = $conn->prepare($sql);
         $stmt->execute([$id]);
         echo "Deleted Successfully";

         }catch(PDOException $e){
        echo "Connection failed: " . $e->getMessage();
        }
}else{
echo "Invalid request";
}
?>