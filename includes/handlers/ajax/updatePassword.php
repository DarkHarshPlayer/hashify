<?php
include("../../config.php");

if (!isset($_POST['userName'])) {
    echo "Critical error call bruce banner";
    exit();
}
if (!isset($_POST['oldPassword']) || !isset($_POST['newPassword1']) || !isset($_POST['newPassword2'])){
    echo "not all password set";
    exit();
}
if ($_POST['oldPassword'] == "" || $_POST['newPassword1'] == "" || $_POST['newPassword2'] == ""){
    echo "Please Fill In all Fields";
    exit();
}

$username = $_POST['userName'];
$oldPassword = $_POST['oldPassword'];
$newPassword1 = $_POST['newPassword1'];
$newPassword2 = $_POST['newPassword2'];


$oldMd5 = md5($oldPassword);

$passwordCheck = mysqli_query($con,"SELECT * FROM users WHERE username='$username' AND password='$oldMd5'");

if(mysqli_num_rows($passwordCheck) != 1){
    echo "password is incorrect";
    exit();
}

if ($newPassword1 != $newPassword2){
    echo "your new password do not match";
    exit();
}
if (preg_match('/[^A-Za-z0-9]/',$newPassword1)){
    echo "your password should contain letters and number";
    exit();
}
if (strlen($newPassword1) > 30 || strlen($newPassword1) < 5){
    echo "your password must be between 5 and 30 characters";
    exit();
}

$newMd5 = md5($newPassword1);

$query = mysqli_query($con,"UPDATE users SET password='$newMd5' WHERE username='$username'");

echo "password updated successfully";