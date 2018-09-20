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

<?php //if ($term == "")exit()?>

<div class="trackListContainer borderBottom">
        <h2 class="popularStringArtist">Songs</h2>
    <ul class="trackList">
        <?php
        $songQuery = mysqli_query($con, "SELECT id FROM songs WHERE title LIKE '$term%' LIMIT 10");
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

            echo "
                            <li class='trackListRow' >  
                                <div class='trackCount'>
                                <img onclick='setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)' src='assests/Images/icons/play-white.png' class='play' alt=''>
                                <span class='trackNumber'>$i</span>
                                </div>
                                <div class='trackInfo' onclick='setTrack(\"".$albumSong->getId()."\",tempPlaylist,true)'>
                                <span class='trackName'>".$albumSong->getTitle()."</span><br>
                                <span class='artistName'>".$albumArtist->getName()."</span>
                                </div>
                                <div class='trackOptions'>
                                    <img src='assests/Images/icons/more.png' class='optionButton' alt=''>
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
<h2 class="popularStringArtist">Artist</h2>

<div class="artistContainer">
    <?php
    $artistQuery = mysqli_query($con,"SELECT id FROM artist WHERE name LIKE '$term%' LIMIT 12 ");

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

<h2 class="popularStringArtist">Album</h2>

<div class="gridViewContainerArtistPage">

    <?php
    $albumQuery = mysqli_query($con,"SELECT * FROM albums WHERE title  LIKE '$term%' LIMIT 10");

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
