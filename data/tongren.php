<?php
header("Content-Type:application/json charset=UTF-8");
require("init.php");
//精选：Select * FROM tongren WHERE type='1' ORDER BY tid DESC LIMIT 0,8;
//绘画：Select * FROM tongren WHERE type='2' ORDER BY tid DESC LIMIT 0,8;
//COS：Select * FROM tongren WHERE type='3' ORDER BY tid DESC LIMIT 0,8;
//视频：Select * FROM tongren WHERE type='4' ORDER BY tid DESC LIMIT 0,8;
//小说：Select * FROM tongren WHERE type='5' ORDER BY tid DESC LIMIT 0,8;
//高手：Select * FROM tongren WHERE type='6' ORDER BY tid DESC LIMIT 0,8;
$output=[];
$sql="Select * FROM tongren WHERE type='1' ORDER BY tid DESC LIMIT 0,8";
$result=mysqli_query($conn,$sql);
$jingxuan=mysqli_fetch_all($result,1);
$output["jingxuan"]=$jingxuan;

$sql="Select * FROM tongren WHERE type='2' ORDER BY tid DESC LIMIT 0,8";
$result=mysqli_query($conn,$sql);
$draw=mysqli_fetch_all($result,1);
$output["draw"]=$draw;

$sql="Select * FROM tongren WHERE type='3' ORDER BY tid DESC LIMIT 0,8";
$result=mysqli_query($conn,$sql);
$cos=mysqli_fetch_all($result,1);
$output["cos"]=$cos;

$sql="Select * FROM tongren WHERE type='4' ORDER BY tid DESC LIMIT 0,8";
$result=mysqli_query($conn,$sql);
$video=mysqli_fetch_all($result,1);
$output["video"]=$video;

$sql="Select * FROM tongren WHERE type='5' ORDER BY tid DESC LIMIT 0,8";
$result=mysqli_query($conn,$sql);
$novel=mysqli_fetch_all($result,1);
$output["novel"]=$novel;

$sql="Select * FROM tongren WHERE type='6' ORDER BY tid DESC LIMIT 0,8";
$result=mysqli_query($conn,$sql);
$top=mysqli_fetch_all($result,1);
$output["top"]=$top;

echo json_encode($output);
