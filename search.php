<?php
    include('includes/includedFiles.php');
    if (isset($_GET['term'])){
        $term = urldecode($_GET['term']);
    }else{
        $term = "";
    }

?>
<div class="searchContainer">
    <h4>Search for an Artist, Song, Album</h4>
    <input type="text" class="searchInput" value="<?php echo $term ?>"   placeholder="Start Typing....">

</div>

<script>


    $('.searchInput').focus(function(){
        var that = this;
        setTimeout(function(){ that.selectionStart = that.selectionEnd = 10000; }, 0);
    });
    $(".searchInput").focus();
    $(function () {


       $(".searchInput").keyup(function () {
          clearInterval(timer);
          
          timer = setTimeout(function () {
                var val = $('.searchInput').val();
                openPage('search.php?term='+val)
          }, 1500);
       });
    });
</script>

<?php if ($term == "")exit()?>
<div class="toggleContainer">
    <h2 class="popularStringArtist toggleItem"> <span id="togSong" onclick="toggleSong()">Songs </span></h2>
    <h2 class="popularStringArtist toggleItem"> <span id="togArtist" onclick="toggleArtist()">Artist </span></h2>
    <h2 class="popularStringArtist toggleItem"> <span id="togAlbum" onclick="toggleAlbum()">Album </span></h2>
</div>

<div class="trackListContainer borderBottom" id="songSection">
    <ul class="trackList">
        <?php
        $songQuery = mysqli_query($con, "SELECT id FROM songs WHERE title LIKE '$term%' LIMIT 100");
            if (mysqli_num_rows($songQuery) == 0){
                echo "<span class='noResult'>No Songs Matches ".$term."</span>";
            }
        $songIdArray = array();
        $i = 1;

        while ($row = mysqli_fetch_array($songQuery)){
            if ($i > 15){
                break;
            }

            array_push($songIdArray,$row['id']);
            $albumSong = new Songs($con,$row['id']);
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
                                <span role=\"link\" onclick=\"openPage('album.php?id=".$currentSongAlbum->getAlbumId()."')\"> <span class='albumName'> ".$currentSongAlbum->getTitle()."</span></span>      </div>
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
<nav class="optionMenu">
    <input type="hidden" class="songId">
    <?php echo Playlist::getDropdownPlaylist($con,$userLoggedIn->getUserName())?>
    <div class="item" id="songPlayNext" onclick="playNext(this)">Play Next</div>
    <div class="item" id="addSongToQueue" onclick="addSongToQueue()">Add To Queue</div>

</nav>


<div class="artistContainer" id="artistSection">
    <?php
    $artistQuery = mysqli_query($con,"SELECT id FROM artist WHERE name LIKE '$term%' LIMIT 100 ");

    if (mysqli_num_rows($artistQuery) == 0){
        echo "<span class='noResult'>No Artist Matches ".$term."</span>";
    }
        while($row = mysqli_fetch_array($artistQuery)){
        $artistFound = new Artist($con,$row['id']);
        echo "<div class='searchResultRow'>
                <div class='artistName'>
                    <span role='link' onclick='openPage(\"artist.php?id=".$artistFound->getId()."\")'> 
                    ". $artistFound->getName()."
                     </span>
                </div>
                       </div>";
        }
    ?>

</div>


<div class="gridViewContainerArtistPage" id="albumSection">

    <?php
    $albumQuery = mysqli_query($con,"SELECT * FROM albums WHERE title  LIKE '$term%' LIMIT 100");

    if (mysqli_num_rows($albumQuery) < 1){
        echo "no album matches ".$term;
    }

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
<script>
    toggleSong();


    function toggleSong() {
        var songSectionSp = document.getElementById('songSection');
        var artistSectionSp = document.getElementById('artistSection');
        var albumSectionSp = document.getElementById('albumSection');
        // console.log(songSectionSp,artistSectionSp,albumSectionSp);

        let albumButton =document.getElementById('togAlbum');
        let songButton = document.getElementById('togSong');
        let artistButton =document.getElementById('togArtist');
        // console.log(songButton);
        songButton.style.color = "#08d85c";
        albumButton.style.color = "#fff";
        artistButton.style.color = "#fff";
        songSectionSp.style.display = 'block';
        artistSectionSp.style.display = 'none';
        albumSectionSp.style.display = 'none';
    }
    function toggleArtist() {
        var songSectionSp = document.getElementById('songSection');
        var artistSectionSp = document.getElementById('artistSection');
        var albumSectionSp = document.getElementById('albumSection');

        // console.log(songSectionSp,artistSectionSp,albumSectionSp);

        let albumButton =document.getElementById('togAlbum');
        let artistButton =document.getElementById('togArtist');
        let songButton = document.getElementById('togSong');
        artistButton.style.color = "#08d85c";
        songButton.style.color = "#fff";
        albumButton.style.color = "#fff";


        songSectionSp.style.display = 'none';
        artistSectionSp.style.display = 'grid';
        albumSectionSp.style.display = 'none';
    }
    function toggleAlbum() {
        var songSectionSp = document.getElementById('songSection');
        var artistSectionSp = document.getElementById('artistSection');
        var albumSectionSp = document.getElementById('albumSection');

        // console.log(songSectionSp,artistSectionSp,albumSectionSp);

        let albumButton =document.getElementById('togAlbum');
        let artistButton =document.getElementById('togArtist');
        let songButton = document.getElementById('togSong');
        albumButton.style.color = "#08d85c";
        songButton.style.color = "#fff";
        artistButton.style.color = "#fff";

        songSectionSp.style.display = 'none';
        artistSectionSp.style.display = 'none';
        albumSectionSp.style.display = 'block';
    }
</script>

