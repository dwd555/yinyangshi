<?php
header("Content-type:application/json;charset=UTF-8");
@$nid=$_REQUEST['nid'] or die("{'msg':'nid required'}");
require("init.php");
$sql="SELECT * FROM news WHERE nid='$nid'";
$result=mysqli_query($conn,$sql);
$list=mysqli_fetch_assoc($result);
echo json_encode($list);