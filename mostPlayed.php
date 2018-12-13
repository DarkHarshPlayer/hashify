<?php
include('includes/includedFiles.php');
?>
<center><h1>Most Played</h1></center>
<div class="trackListContainer borderBottom" id="songSection">

    <ul class="trackList">
        <?php
        $songQuery = mysqli_query($con, "SELECT id FROM songs ORDER BY plays DESC LIMIT 100  ");
        if (mysqli_num_rows($songQuery) == 0){
            echo "<span class='noResult'>No Songs Matches ".$term."</span>";
        }
        $songIdArray = array();
        $i = 1;

        while ($row = mysqli_fetch_array($songQuery)){
            if ($i > 100){
                break;
            }

            array_push($songIdArray,$row['id']);
            $albumSong = new Songs($con,$row['id']);
            $albumArtist = $albumSong->getArtist();
            $currentSongAlbum = $albumSong->getAlbum();


            echo "
                                <li class='trackListRow' oncontextmenu='showOptionsMenuCM(event,this)'>
                                <input type='hidden' class='songIdCM' value='".$albumSong->getId()."'>                                <div class='trackCount'>
                                <img onclick='manualPlaylist=false;setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)' src='assests/Images/icons/play-white.png' class='play' alt=''>
                                <span class='trackNumber'>$i</span>
                                </div>
                                 <div class='trackInfo' >
                                <span class='trackName ' onclick='manualPlaylist=false;setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)'>".$albumSong->getTitle()."</span><br>
                                 <span role=\"link\" onclick=\"openPage('artist.php?id=".$albumArtist->getId()."')\"><span class='artistName'>".$albumArtist->getName()."</span></span>
                                  <span class='artistAlbumNameSeperator'>•</span>
                                <span role=\"link\" onclick=\"openPage('album.php?id=".$currentSongAlbum->getAlbumId()."')\"> <span class='albumName'> ".$currentSongAlbum->getTitle()."</span></span>
                                </div>
                                <div class='trackOptions'>
                                <input type='hidden' class='songId' value='".$albumSong->getId()."'>
                                    <img src='assests/Images/icons/more.png' onclick='showOptionsMenu(this)'  class='optionButton' alt=''>
                                </div>
                                <div class='trackDuration'>
                                <span class='duration'>".$albumSong->getDuration()."</span>
</div>
                            </li>
                        ";
            $i++;
        }
        ?>
        <script>
            tempSongId = '<?php echo json_encode($songIdArray)?>';
            tempPlaylist  = JSON.parse(tempSongId);
            // console.log(tempPlaylist+"  "+tempSongId);
        </script>
    </ul>
</div>

<nav class="optionMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getDropdownPlaylist($con,$userLoggedIn->getUserName())?>
    <div class="item" id="songPlayNext" onclick="playNext(this)">Play Next</div>
    <div class="item" id="addSongToQueue" onclick="addSongToQueue()">Add To Queue</div>


</nav>