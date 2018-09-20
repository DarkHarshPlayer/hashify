<?php

function sanitizeFormPassword($input){
    $input = strip_tags($input);
    return $input;
}
function sanitizeFormUsername($input){
    $input = strip_tags($input);
    $input = str_replace(" ","",$input);
    return $input;
}
function sanitizeFormString($input){
    $input = strip_tags($input);
    $input = str_replace(" ","",$input);
    $input = ucfirst(strtolower($input));
    return $input;
}



if(isset($_POST['registerButton'])){
    $username = sanitizeFormUsername($_POST['username']);
    $firstName = sanitizeFormString($_POST['firstName']);
    $lastName = sanitizeFormString($_POST['lastName']);
    $email = sanitizeFormString($_POST['email']);
    $email2 = sanitizeFormString($_POST['email2']);
    $password = sanitizeFormPassword($_POST['password']);
    $password2 = sanitizeFormPassword($_POST['password2']);

    $wasSuccessful = $account->register($username,$firstName,$lastName,$email,$email2,$password,$password2);

    if ($wasSuccessful){
        $_SESSION['userLoggedIn'] = $username;
        header("Location: index.php");
    }
}
