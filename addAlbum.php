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
    <h2>Album Title</h2>
    <input type="text" id="AlbumNameToInsert" maxlength="200" max="200" min="1" minlength="1" class="insertAlbum" name="insertAlbum" placeholder="Album Name" >
    <h2>Artist</h2>
    <?php echo Artist::getDropdownArtist($con)?>
    <h2>Genre</h2>
    <?php echo Songs::getDropdownGenre($con)?>
    <h2>Artwork Path</h2>
    <input type="text" id="insertSongArtworkPath" maxlength="500" max="500" min="10" minlength="10" class="insertSongArtworkPath" name="insertSongArtworkPath" value="/assests/Images/Album Art/" placeholder="Path" >
    <span class="errorInsertingSong"></span><br><br>
    <div class="insertSongContainer"><button class="button" name="addSongButton" onclick="addAlbumToDataBase('insertAlbum','insertSongArtist','insertSongGenre','insertSongArtworkPath')">ADD</button></div>
</div>
</div>
