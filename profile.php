<?php
    include('includes/includedFiles.php');
    $userName = $userLoggedIn->getUserName();
    $isAdmin = false;
    if ($userName == "admin"){
        $isAdmin = true;
    }
?>
<div class="entityInfoUser">
    <div class="centerSection">
        <div class="userInfo">
            <h1><?php echo $userLoggedIn->getFirstAndLastName()."</h1>";
            if ($isAdmin){
                echo "<h2>(Admin)</h2><br><br>";
            }
            ?>
        </div>
    </div>
    <div class="buttonItem">
        <button class="button" onclick="openPage('updateDetails.php')">User Detail</button><br>
        <button class="button" onclick="logOut();">Log Out</button>
    </div>
    <?php


        if ($isAdmin){
            echo "<br> <hr><br>Admin's Panel:<br><br>
    <div class=\"buttonItem\">
        <button class=\"button\" onclick=\"openPage('addSongs.php')\">Add songs</button><br>
        <button class=\"button\" onclick=\"openPage('addAlbum.php')\">Add Album</button>
        <button class=\"button\" onclick=\"openPage('addArtist.php')\">Add Artist</button>
        
    </div><br><hr>";
        }
    ?>
    <p>
        This site is still Under development. New features and songs will be added soon.<br><br>
        Inspired By Spotify <span onclick="tweak1Count()">:)</span><br>
        <br>By <b>Harsh Banjare</b>
        <br>&copy; Harsh 2018
    </p>
    <kbd> <a href="https://github.com/DarkHarshPlayer/hashify/" target="_blank"> <code>Source Code</code> </a> </kbd>
</div>
