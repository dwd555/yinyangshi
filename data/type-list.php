<?php
header("Content-type:application/json;charset=UTF-8");
@$type=$_REQUEST['type'] or die("{'msg':'type required'}");
require("init.php");
$sql="SELECT * FROM news WHERE type='$type' ORDER BY date DESC";
$result=mysqli_query($conn,$sql);
$row=mysqli_fetch_all($result,MYSQLI_ASSOC);
echo json_encode($row);
