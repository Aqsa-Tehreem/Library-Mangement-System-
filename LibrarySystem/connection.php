<?php

session_start();
if(!isset($_SESSION['user']))
{
   echo "<script>alert('Login or Signup to access this page! Redirecting to home page...')</script>";
   header( "Refresh:1; url=homelogin.php", true, 303);

}
$host="localhost";
$port=3306;
$socket="";
$user="root";
$password="library";
$dbname="librarymanagementsystem";

try {
   $con = new PDO("mysql:host={$host};port={$port};dbname={$dbname}", $user, $password);
   
}

catch (PDOException $e) {
   echo "<script>alert('Error')</script>";
   header( "Refresh:1; url=home.php", true, 303);
}


?>