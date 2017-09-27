<?php
header("Content-Type:application/json charset=UTF-8");
require("init.php");
//最新：Select * FROM news ORDER BY date DESC LIMIT 0,5;
//新闻：Select * FROM news WHERE type='1' ORDER BY date DESC LIMIT 0,5;
//公告：Select * FROM news WHERE type='2' ORDER BY date DESC LIMIT 0,5;
//活动：Select * FROM news WHERE type='3' ORDER BY date DESC LIMIT 0,5;
//媒体：Select * FROM news WHERE type='4' ORDER BY date DESC LIMIT 0,5;
$output=[];
$sql="Select * FROM news ORDER BY date DESC LIMIT 0,5";
$result=mysqli_query($conn,$sql);
$new=mysqli_fetch_all($result,1);
$output["new"]=$new;

$sql="Select * FROM news WHERE type='1' ORDER BY date DESC LIMIT 0,5";
$result=mysqli_query($conn,$sql);
$news=mysqli_fetch_all($result,1);
$output["news"]=$news;

$sql="Select * FROM news WHERE type='2' ORDER BY date DESC LIMIT 0,5";
$result=mysqli_query($conn,$sql);
$announcement=mysqli_fetch_all($result,1);
$output["announcement"]=$announcement;

$sql="Select * FROM news WHERE type='3' ORDER BY date DESC LIMIT 0,5";
$result=mysqli_query($conn,$sql);
$activity=mysqli_fetch_all($result,1);
$output["activity"]=$activity;

$sql="Select * FROM news WHERE type='4' ORDER BY date DESC LIMIT 0,5";
$result=mysqli_query($conn,$sql);
$media=mysqli_fetch_all($result,1);
$output["media"]=$media;

echo json_encode($output);