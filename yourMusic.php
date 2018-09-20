<?php
include('includes/includedFiles.php');
?>

<div class="playlistContainer">
    <div class="gridViewContainer">
        <h2>PLAYLISTS</h2>

        <div class="buttonItem">
            <button class="button green" onclick="createPlaylist()">New Playlist</button>
        </div>

        <?php

        $userName = $userLoggedIn->getUserName();

        $playlistQuery = mysqli_query($con,"SELECT * FROM playlist WHERE owner='$userName'");

        if (mysqli_num_rows($playlistQuery) < 1){
            echo "Click New playlist to create playlist";
        }

        while ($row = mysqli_fetch_array($playlistQuery)){

            $playlist = new Playlist($con,$row);
            echo "<div class='gridViewItemArtistPage' role='link' onclick='openPage(\"playlist.php?id=".$playlist->getId()."\")'>
                        <div class='playlistImage'>
                        <img src='assests/Images/icons/playlist.png' title='".$row['name']."'>
                        </div>
                      <div class='gridViewInfo'>
                          ".$playlist->getName()."
                        </div>
                    </div>";
        }
        ?>

    </div>
</div>
