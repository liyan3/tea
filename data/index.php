<?php
header('Content-Type:application/json;charset=UTF-8'); 
  require_once("init.php");
  @$class=$_REQUEST["classtiy"];
  if($class==="all"){
	$sql ="SELECT * FROM e_product";
	}else{
    $sql ="SELECT pid,p_title,pimg FROM e_product WHERE classtiy='$class'";
  }
 echo json_encode(sql_execute($sql));
?>