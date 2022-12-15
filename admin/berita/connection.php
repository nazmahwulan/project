<?php
    $servername = "localhost";
    $database   = "project3";
    $username   = "root";         // Change with your database username
    $password   = "";         // Change with your database password, leave it blank if your database doesn't has password
    
    // Create connection
    $conn = mysqli_connect($servername, $username, $password, $database);
    
    // Check connection
    if (!$conn) {
        die("Connection failed: " . mysqli_connect_error());
    }
?>