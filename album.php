<?php
include('includes/includedFiles.php');

if (isset($_GET['id'])){
   $albumId = $_GET['id'];
}else{
    header('location: index.php');
}

$album = new Album($con,$albumId);
$artist = $album->getArtist();
$artistId = $artist->getId();

?>

<div class="entityInfo">
    <div class="leftSection">
        <img src="/hashify<?php echo $album->getArtworkPath();?>">
        <h1><?php echo $album->getTitle();?></h1>
        <span role="link" onclick="openPage('artist.php?id=<?php echo $artistId?>')">By <span><?php echo $artist->getName();?></span></span><br><br>
        <span> <?php echo $album->getNoOfSongs();?> Songs</span>
        <br><br>
        <button class="button "style="background-color: #25a04a !important;
    border-color: #25a04a !important;" onclick="playFirstTrack()">Play</button>
    </div>
    <div class="rightSection">
        <div class="trackListContainer">
            <ul class="trackList">
                <?php
                    $songIdArray = $album->getSongIds();
                        $i = 1;
                    foreach ($songIdArray as $songId){

                        $albumSong = new Songs($con,$songId);
                        $albumArtist = $albumSong->getArtist();
                        $currentSongAlbum = $albumSong->getAlbum();
                        echo "
                            <li class='trackListRow' oncontextmenu='showOptionsMenuCM(event,this)'>
                                <input type='hidden' class='songIdCM' value='".$albumSong->getId()."'>
                                <div class='trackCount'>
                                <img onclick='manualPlaylist=false;setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)' src='assests/Images/icons/play-white.png' class='play' alt=''>
                                <span class='trackNumber'>$i</span>
                                </div>
                                <div class='trackInfo' >
                                <span class='trackName ' onclick='manualPlaylist=false;setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)'>".$albumSong->getTitle()."</span><br>
                                 <span role=\"link\" onclick=\"openPage('artist.php?id=".$albumArtist->getId()."')\"><span class='artistName'>".$albumArtist->getName()."</span></span>  
                                <span class='artistAlbumNameSeperator'>•</span>
                                <span class='albumName'> ".$currentSongAlbum->getTitle()."</span>
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
                    var tempSongId = '<?php echo json_encode($songIdArray)?>';
                    tempPlaylist  = JSON.parse(tempSongId);
                </script>
            </ul>
        </div>
    </div>
</div>


<nav class="optionMenu">
    <input type="hidden" class="songId">
        <?php echo Playlist::getDropdownPlaylist($con,$userLoggedIn->getUserName())?>
    <div class="item" id="songPlayNext" onclick="playNext(this)">Play Next</div>
    <div class="item" id="addSongToQueue" onclick="addSongToQueue()">Add To Queue</div>
</nav>

