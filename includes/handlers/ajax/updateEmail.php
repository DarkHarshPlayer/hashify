<?php
include("../../config.php");

if (!isset($_POST['userName'])) {
    echo "Critical error call bruce banner";
}if (isset($_POST['email']) && $_POST['email'] != "") {

    $username = $_POST['userName'];
    $email = $_POST['email'];

    if (!filter_var($email,FILTER_VALIDATE_EMAIL)){
        echo "Inavlid Email";
        exit();
    }

    $emailCheck = mysqli_query($con,"SELECT email FROM users WHERE email='$email' AND username != '$username'");
    if (mysqli_num_rows($emailCheck) > 0){
        echo "email alredy in use";
        exit();
    }

    $updateQuery = mysqli_query($con,"UPDATE users SET email='$email' WHERE username='$username'");
    echo "Update Success";

}else{
    echo "You Have Violated International Laws.  You Will Be Arrested By FBI.";
}