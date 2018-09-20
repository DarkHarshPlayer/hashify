<?php
include("includes/includedFiles.php");

if (isset($_GET['id'])){
    $artistId = $_GET['id'];
}else{
    header('Location: index.php');
}

$artist = new Artist($con, $artistId);
?>
<div class="entityInfoArtist borderBottom " >
    <div class="artistBackground" style=" background: url('<?php echo $artist->getArtistImage()?>');">

    </div>
    <div style="position: relative;">
    <div class="centerSection " >
        <div class="artistInfo">

            <h1 class="artistName"><?php echo $artist->getName()?></h1>

            <div class="headerButtons">
                <button class="button green" onclick="playFirstTrack()">Play</button>
            </div>
        </div>
    </div>
</div>
</div>

<div class="trackListContainer borderBottom">
    <h2 class="popularStringArtist">Popular</h2>
    <ul class="trackList">
        <?php
        $songIdArray = $artist->getSongId();
        $i = 1;
        foreach ($songIdArray as $songId){
                if ($i > 8){
                    break;
                }
            $albumSong = new Songs($con,$songId);
            $albumArtist = $albumSong->getArtist();

            echo "
                            <li class='trackListRow' >  
                                <div class='trackCount'>
                                <img onclick='manualPlaylist=false;setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)' src='assests/Images/icons/play-white.png' class='play' alt=''>
                                <span class='trackNumber'>$i</span>
                                </div>
                                <div class='trackInfo' onclick='manualPlaylist=false; setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)'>
                                <span class='trackName'>".$albumSong->getTitle()."</span><br>
                                <span class='artistName'>".$albumArtist->getName()."</span>
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
        </script>
    </ul>
</div>


<h2 class="popularStringArtist">Albums</h2>
<div class="gridViewContainerArtistPage">

    <?php
    $albumQuery = mysqli_query($con,"SELECT * FROM albums WHERE artist='$artistId'");

    while ($row = mysqli_fetch_array($albumQuery)){
        echo "<div class='gridViewItemArtistPage'>
                    <span onclick='openPage(\"album.php?id=".$row['id']."\")'>
                <img src='/hashify".$row['artworkPath']."' alt=' ".$row['title']."'>
                        <div class='gridViewInfo'>
                         ".$row['title']."
                    </div>
                    </span>
                    </div>";
    }
    ?>
</div>
<nav class="optionMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getDropdownPlaylist($con,$userLoggedIn->getUserName())?>
    <div class="item" id="songPlayNext" onclick="playNext(this)">Play Next</div>
    <div class="item" id="addSongToQueue" onclick="addSongToQueue()">Add To Queue</div>
</nav>



