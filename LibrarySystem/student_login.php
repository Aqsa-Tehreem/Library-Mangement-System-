<?php
session_start();
if(isset($_POST['submit']) )
{
  
  $host="localhost";
  $port=3306;
  $socket="";
  $user="root";
  $password="library";
  $dbname="librarymanagementsystem";

  try {
      $con = new PDO("mysql:host={$host};port={$port};dbname={$dbname}", $user, $password);
      $loginid_ = $_POST['loginid'];
      $pass = $_POST['password'];
  
      $sql = "SELECT login_id,passcode FROM library_account WHERE login_id=? AND passcode=? AND is_student='true'";
      $stmt= $con->prepare($sql);
      $stmt->execute([$loginid_,$pass]);
    
      $result = $stmt->fetch();
      if(gettype($result)=="boolean"){
        echo "<script>alert('Invalid Credentials')</script>";
        header( "Refresh:1; url=home.php", true, 303);

      }
      else{
        echo "<script>alert('Logged in successfully')</script>";
        $_SESSION['user'] = $loginid_;
        header( "Refresh:1; url=homelogin.php", true, 303);
      }
    
  }

  catch (PDOException $e) {
    echo "<script>alert('Error')</script>";
    header( "Refresh:1; url=home.php", true, 303);
  }


  
 
}

?>


