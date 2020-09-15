<?php
/**
 * mysql_connect is deprecated
 * using mysqli_connect instead
 */

$databaseHost = 'localhost';
$databaseName = 'id13906031_emart';
$databaseUsername = 'id13906031_root';
$databasePassword = 'Ayush-tiwari123';

$mysqli = mysqli_connect($databaseHost, 
$databaseUsername, $databasePassword, $databaseName); 
 
?>