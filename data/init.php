<?php
$db_url ='127.0.0.1';
$db_user = 'root';
$db_pwd = '';
$db_dbname = 'yinyangshi';
$db_port = '3306';
//$conn = mysqli_connect($db_url,$db_user,$db_pwd,$db_dbname,$db_port);
$conn = mysqli_connect(SAE_MYSQL_HOST_M, SAE_MYSQL_USER, SAE_MYSQL_PASS,  SAE_MYSQL_DB, SAE_MYSQL_PORT);
$sql = "SET NAMES UTF8";
mysqli_query($conn, $sql);