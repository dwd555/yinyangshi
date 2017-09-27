<?php
header("Content-Type:application/json charset=UTF-8");
require("init.php");
$sql="SELECT * FROM gonglue ORDER BY date DESC LIMIT 0,10";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($row);