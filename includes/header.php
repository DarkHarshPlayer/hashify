<?php
include('includes/config.php');
include("includes/classes/User.php");
include("includes/classes/Artist.php");
include("includes/classes/Album.php");
include("includes/classes/Songs.php");
include("includes/classes/Playlist.php");

if (isset($_SESSION["userLoggedIn"])){
    $userLoggedIn = new User($con,$_SESSION['userLoggedIn']);
    $userName = $userLoggedIn->getUserName();

    if ($userName == 'admin'){
        echo "<script>
                userLoggedIn = '$userName';
                       document.addEventListener('contextmenu', function() {
                      console.log(userLoggedIn+' Permission Granted');
                    });
 
                     
        </script>";
    }else{
    echo "<script>
                userLoggedIn = '$userName';
                       document.addEventListener('contextmenu', event => event.preventDefault());   
                      
            </script>";

}}else{
    header("Location: register.php");
}

//logOutButton

?>
<html>
<head>
    <title>Hashify - A Music Streaming Site By Harsh Banjare.</title>
    <link rel="shortcut icon" href="/hashify/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/hashify//favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assests/css/style.css">
    <script src="assests/js/jquery.js"></script>
    <script src="assests/js/script.js"></script>
    <script>
    </script>
</head>
<body>

<div id="mainContainer">
    <div id="topContainer">
        <?php include('includes/navBar.php')?>
        <div id="mainViewContainer">
            <div id="mainContent">


