<?php
include('includes/includedFiles.php');

if (isset($_GET['id'])){
    $playlistId = $_GET['id'];
}else{
    header('location: index.php');
}

$playlist = new Playlist($con,$playlistId);
$owner  = new User($con,$playlist->getOwner());
?>

<div class="entityInfo">
    <div class="leftSection">
        <img src="assests/Images/icons/playlist.png" class="playListImage">
        <h1><?php echo $playlist->getName();?></h1>
        <span>By <?php echo $owner->getUserName();?></span><br><br>
        <span> <?php echo $playlist->getNoOfSongs();?> Songs</span><br><br><button style="background-color: #25a04a !important;
    border-color: #25a04a !important;" class="button" onclick="playFirstTrack()">Play</button>
        <button class="button" style="width: 200px;" onclick="deletePlaylist(<?php echo $playlistId?>)">Delete Playlist</button>
    </div>
    <div class="rightSection">
        <div class="trackListContainer">
            <ul class="trackList">
                <?php
                $songIdArray = $playlist->getSongIds();
                $i = 1;
                foreach ($songIdArray as $songId){

                    $playlistSong = new Songs($con,$songId);
                    $songArtist = $playlistSong->getArtist();
                    $currentSongAlbum = $playlistSong->getAlbum();

                    echo "
                            <li class='trackListRow' >  
                                <div class='trackCount'>
                                <img onclick='manualPlaylist=false;setTrack(\"".$playlistSong->getId()."\",tempPlaylist,true)' src='assests/Images/icons/play-white.png' class='play' alt=''>
                                <span class='trackNumber'>$i</span>
                                </div>
                                <div class='trackInfo' >
                                <span class='trackName ' onclick='manualPlaylist=false;setTrack(\"".$playlistSong->getId()."\",tempPlaylist,true)'>".$playlistSong->getTitle()."</span><br>
                                 <span role=\"link\" onclick=\"openPage('artist.php?id=".$songArtist->getId()."')\"><span class='artistName'>".$songArtist->getName()."</span></span>
                               <span class='artistAlbumNameSeperator'>•</span>
                                <span role=\"link\" onclick=\"openPage('album.php?id=".$currentSongAlbum->getAlbumId()."')\"> <span class='albumName'> ".$currentSongAlbum->getTitle()."</span></span>
                                </div>
                                <div class='trackOptions'>
                                    <input type='hidden' class='songId' value='".$playlistSong->getId()."'>
                                    <img src='assests/Images/icons/more.png' onclick='showOptionsMenu(this)' class='optionButton' alt=''>
                                </div>
                                <div class='trackDuration'>
                                <span class='duration'>".$playlistSong->getDuration()."</span>
</div>
                            </li>
                        ";
                    $i++;
                }
                ?>
                <script>
                    tempSongId = '<?php echo json_encode($songIdArray)?>';
                    tempPlaylist  = JSON.parse(tempSongId);
                </script>
            </ul>
        </div>
    </div>
</div>


<nav class="optionMenu">
    <input type="hidden" class="songId">
    <div class="item" onclick="removefromPlaylist(this,'<?php echo $playlistId?>')">Remove From Playlist</div>
    <div class="item" id="songPlayNext" onclick="playNext(this)">Play Next</div>
    <div class="item" id="addSongToQueue" onclick="addSongToQueue()">Add To Queue</div>
</nav>