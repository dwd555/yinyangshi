<?php
header("Content-Type:application/json charset=UTF-8");
require("init.php");
$sql="SELECT * FROM yys_carousel";
$result=mysqli_query($conn,$sql);
$result=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($result);