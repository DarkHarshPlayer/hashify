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
                     document.addEventListener('contextmenu', event => event.preventDefault());
                //   document.addEventListener('contextmenu', function() {
                    //  console.log(userLoggedIn+' Permission Granted');
                    //});
 
                     
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

<div class="loadingBarContainer" style="position: fixed; top: 0; left: 0; width: 100%;height: 3px; background: transparent; z-index: 1000000;" id="loadingBarContainer">
    <div class="loadingBar" id="loadingBar"></div>
</div>
<style>
    #loadingBar{
        position: absolute;
        height: 100%;
        top: 0;
        left: 0;
        width: 0;
        background: #1edb57;
        z-index: 100;
    }
    #loadingBar::after{
        content: '';
        position: absolute;
        height: 3px;
        width: 300px;
        top: 0px;
        box-shadow: #1edb57 1px 0 6px 1px;
        border-radius: 100%;
        right: 0;

        z-index: 99;
        -webkit-animation: pulse 2s ease-in-out infinite;
    }

    @-webkit-keyframes pulse {
        0% {
            opacity: 0;
        }25{
    opacity: 0.5;
    }50%{
    opacity: 1;
    }75%{
    opacity: 0.5;
    }100%{
    opacity: 0;
    }
    }

</style>

<div id="pageLoader" style="z-index: 9999999; position: fixed; height: 100%; width: 100%; background: rgba(255,255,255,0.99);">
    <img src="assests/Images/Loader.gif" alt="loading" style="position: fixed; top: 50%; left: 50%; transform: translate(-50%,-50%);width: 100px;">
</div>
<script>
    $(window).on('load' ,function () {
        $('#pageLoader').hide();
    });
</script>


<div id="mainContainer">

    <div id="topContainer">
        <div class="loadingCover" style="width: 100%; height: 100%; background: rgba(72,75,76,0.61); z-index: 999; position: fixed; display: none"  id="loadingCover" ></div>
        <?php include('includes/navBar.php')?>
        <div id="mainViewContainer">
            <div id="mainContent">

