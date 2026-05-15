<?php
// Database configuration
$host = 'localhost';
$dbname = 'lms_db';
$username = 'root'; // Default XAMPP username
$password = '';     // Default XAMPP password (leave blank if not set)

// Create database connection
$conn = mysqli_connect($host, $username, $password, $dbname);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
?>