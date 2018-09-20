<?php
include("includes/includedFiles.php");
$userName = $userLoggedIn->getUserName();

if ($userName != 'admin'){
    echo "<script>
        openPage('profile.php');
        </script>";
}
?>
<div class="userDetails">
    <h2>Artist Name</h2>
    <input type="text" id="artistNameToInsert" maxlength="200" max="200" min="1" minlength="1" class="artistNameToInsert" name="artistNameToInsert" placeholder="Artist Name" >
    <h2>Artist Image Path</h2>
    <input type="text" id="insertArtistImagePath" maxlength="500" max="500" min="10" minlength="10" class="insertArtistImagePath" name="insertArtistImagePath" value="/hashify/assests/Images/artist/" placeholder="Path" >
    <span class="errorInsertingArtist" style="color: #20ff17;"></span><br><br>
    <div class="insertSongContainer"><button class="button" name="addSongButton" onclick="addArtistToDataBase('artistNameToInsert','insertArtistImagePath')">ADD</button></div>
</div>

