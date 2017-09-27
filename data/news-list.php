<?php
header("Content-type:application/json;charset=UTF-8");
require("init.php");
$sql="SELECT * FROM news ORDER BY date DESC";
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($list);