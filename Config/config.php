<?php 

$host="localhost";
$user="root";
$password="@SDOLaguna2023";
$db="deped";


$data=mysqli_connect($host,$user,$password,$db);

if($data===false)
{
    die("connection error");
}



?>