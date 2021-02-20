
<?php
session_start();
header( "Refresh:1; url=home.php", true, 303);
session_destroy();

?>
