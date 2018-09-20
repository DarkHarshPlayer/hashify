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
        <h2>Song</h2>
        <input type="text" id="songNameToInsert" maxlength="200" max="200" min="1" minlength="1" class="insertSong" name="insertSong" placeholder="Song Name" >
        <h2>Album</h2>
        <?php echo Album::getDropdownAlbum($con)?>
        <h2>Artist</h2>
         <?php echo Artist::getDropdownArtist($con)?>
        <h2>Genre</h2>
       <?php echo Songs::getDropdownGenre($con)?>
<!--        <input type="number" id="songGenre" class="insertSongGenre" name="insertSongGenre" placeholder="Genre">-->
        <h2>Duration</h2>
        <input type="text" id="songDuration" maxlength="8" max="8" min="3" minlength="3" class="insertSongDuration" name="insertSongDuration" placeholder="Duration" >
        <h2>Path</h2>
        <input type="text" value="/assests/Songs/" id="songPath" maxlength="500" max="500" min="10" minlength="10" class="insertSongPath" name="insertSongPath" placeholder="Path" >
        <h2>Album Order</h2>
        <input type="number" id="songAlbumOrder"  class="insertSongAlbumOrder" name="insertSongAlbumOrder" placeholder="Album Order">
        <span class="errorInsertingSong"></span><br><br>
        <div class="insertSongContainer"><button class="button" name="addSongButton" onclick="addSongsToDataBase('insertSong','insertSongArtist','insertSongAlbum','insertSongGenre','insertSongDuration','insertSongPath','insertSongAlbumOrder')">ADD</button></div>
    </div>
</div>
