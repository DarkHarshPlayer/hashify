
<script>
    $(document).ready(function () {

        <?php

        $lastSongPlayedQuery = mysqli_query($con,"SELECT * FROM users WHERE username='$userName'");
        $lastPlayedArr = mysqli_fetch_array($lastSongPlayedQuery);
        $lastPlayedSong = $lastPlayedArr['lastPlayedSong'];
        $lastPlayedPlaylist = json_decode($lastPlayedArr['lastPlayedPlaylist']);


        if ($lastPlayedSong == 0){ // will be executed very first time when user signs up
            $songQuery = mysqli_query($con,"SELECT id FROM songs ORDER BY RAND() LIMIT 90");
            $resultArray = array();
            while ($row = mysqli_fetch_array($songQuery)){
                array_push($resultArray,$row['id']);
            }
            $jsonArray = json_encode($resultArray);
            echo "
                   
                        var newPlaylist = $jsonArray;
                        audioElement = new Audio();
                        setTrack(newPlaylist[0],newPlaylist,false);
                 
               ";
        }else{
            $lastPlayedSongPos = array_search($lastPlayedSong,$lastPlayedPlaylist);
            $lastPlayedPlaylistJson = json_encode($lastPlayedPlaylist);
            if ($lastPlayedSongPos == ""){
                $lastPlayedSongPos = 0;
            }
            $resultArray = $lastPlayedPlaylistJson;
                echo "
                    //    console.log[$lastPlayedSongPos];
                        var newPlaylist = $resultArray;  
                        audioElement = new Audio();  
                        setTrack(newPlaylist[$lastPlayedSongPos],newPlaylist,false);
                  ";
        }




        ?>

        updateVolumeProgressBar(audioElement.audio);

        $("#nowPlayingBarContainer").on("mousedown touchstart mousemove touchmove",function (e) {
           e.preventDefault();
        });

        $(".playbackBar .progressBar").mousedown(function () {
        mouseDown = true;
     });
     $(".playbackBar .progressBar").mousemove(function (e) {
        if (mouseDown){
            timeFromOffset(e,this)
        }
     });
     $(".playbackBar .progressBar").mouseup(function (e) {

            timeFromOffset(e,this)

     });
        $(".volumeBar .progressBar").mousedown(function () {
            mouseDown = true;
        });

        $(".volumeBar .progressBar").mousemove(function (e) {
            if (mouseDown){
                var percentage = e.offsetX / $(this).width();
                if (percentage >= 0 && percentage <= 1) {
                    audioElement.audio.volume = percentage;
                }
            }
        });
        $(".volumeBar .progressBar").mouseup(function (e) {
            var percentage = e.offsetX / $(this).width();
            if (percentage >= 0 && percentage <= 1) {
                    audioElement.audio.volume = percentage;
            }
        });



    $(document).mouseup(function () {
        mouseDown = false;
    });
    });
    function setRepeat(){
        repeat = !repeat;
        var imageName = repeat ? "repeat-active.png" : "repeat.png";
        $(".controlButton.repeat img").attr('src',"assests/Images/icons/"+imageName);
    }
    function setMute(){
        audioElement.audio.muted = !audioElement.audio.muted;
        var imageName = audioElement.audio.muted ? "volume-mute.png" : "volume.png";
        $(".controlButton.volume img").attr('src',"assests/Images/icons/"+imageName);
    }
    function setShuffle(){

        shuffle = !shuffle;

        var imageName = shuffle ? "shuffle-active.png" : "shuffle.png";
        $(".controlButton.shuffle img").attr('src',"assests/Images/icons/"+imageName);

        if(manualPlaylist){
            currentIndex = currentPlaylist.indexOf(audioElement.currentlyPlaying.id)
        }else {
            if (shuffle) {
                shuffleArray(shufflePlaylist);
                currentIndex = shufflePlaylist.indexOf(audioElement.currentlyPlaying.id)
            } else {
                currentIndex = currentPlaylist.indexOf(audioElement.currentlyPlaying.id)

            }
        }
        }

    function shuffleArray(a) {
        var j, x, i;
        for (i = a.length - 1; i > 0; i--) {
            j = Math.floor(Math.random() * (i + 1));
            x = a[i];
            a[i] = a[j];
            a[j] = x;
        }
        return a;
    }

    function prevSong() {
        if (audioElement.audio.currentTime >= 3 || currentIndex == 0){
            audioElement.setTime(0);
        }else{
            currentIndex--;
            setTrack(currentPlaylist[currentIndex],currentPlaylist,true);
        }
    }
    function nextSong() {
        if (repeat){
            audioElement.setTime(0);
            playSong();
            return;
        }
        if (currentIndex == currentPlaylist.length -1){
            currentIndex = 0;
          //  console.log(currentIndex);
        }else {
            currentIndex++;
          //  console.log(currentIndex);

        }
        var trackToPlay = shuffle ? shufflePlaylist[currentIndex] : currentPlaylist[currentIndex];
        //console.log(trackToPlay);
        setTrack(trackToPlay,currentPlaylist, true);
    }
    
    function timeFromOffset(mouse, progressBar) {
        var percentage = mouse.offsetX / $(progressBar).width() * 100;
        var seconds = audioElement.audio.duration * (percentage / 100);

        audioElement.setTime(seconds);
    }
    function setTrack(trackId,newPlaylist,play) {

        let playlistToBeUpdated = JSON.stringify(newPlaylist);
        $.post("includes/handlers/ajax/updateLastPlayed.php",{user: userLoggedIn , song: trackId , playlist: playlistToBeUpdated}).done(function (e){
      //      console.log(e);
        })



        if (newPlaylist != currentPlaylist){
            currentPlaylist = newPlaylist;
            shufflePlaylist = currentPlaylist.slice();
            shuffleArray(shufflePlaylist);
        }

        if (shuffle){
            currentIndex = shufflePlaylist.indexOf(trackId);
        }else {
            currentIndex = currentPlaylist.indexOf(trackId);
        }

        pauseSong();
       // console.log(trackId);
        $.post("includes/handlers/ajax/getSongJson.php", {songId: trackId} ,function (data) {
          //  console.log(data);

            var track = JSON.parse(data);

            $('.trackName span').text(track.title);
            $.post("includes/handlers/ajax/getArtistJson.php", {artistId: track.artist} ,function (dataA) {
                var artist = JSON.parse(dataA);
                $('.trackInfo .artistName span').text(artist.name);
                $('.trackInfo .artistName span').attr('onclick',"openPage('artist.php?id="+track.artist+"')");

            });
            $.post("includes/handlers/ajax/getAlbumJson.php", {albumId: track.album} ,function (dataA) {
                var album = JSON.parse(dataA);
                $('.content .albumLink img').attr('src',"/hashify"+album.artworkPath);
                $('.content .albumLink img').attr('onclick',"openPage('album.php?id="+track.album+"')");

            });
            audioElement.setTrack(track);

            if(play){
                playSong();
            }
        });


    }

    function playSong() {
        
        if (audioElement.audio.currentTime == 0){
            $.post("includes/handlers/ajax/updatePlays.php",{songId : audioElement.currentlyPlaying.id})
        }
        
        $('.controlButton.play').hide();
        $('.controlButton.pause').show();
       // console.log('play');
        audioElement.play();


    }
    function pauseSong() {
        $('.controlButton.play').show();
        $('.controlButton.pause').hide();
        audioElement.pause();
    }

</script>
<div id="nowPlayingBarContainer" onfocus="playingBarFocus()" onblur="playingBarFocusOut()">
    <div id="nowPlayingBar" onfocus="playingBarFocus()" onblur="playingBarFocusOut()">
        <div id="nowPlayingLeft">
            <div class="content">
                        <span class="albumLink">
                            <img src="" role="link" class="albumArtwork">
                        </span>
                <div class="trackInfo">
                            <span class="trackName">
                                <span role="link"></span>
                            </span>
                    <span class="artistName">
                                <span role="link"></span>
                            </span>
                </div>
            </div>
        </div>

        <div id="nowPlayingCenter">

            <div class="content playerControls">

                <div class="buttons">

                    <button class="controlButton shuffle"  onclick="setShuffle()" title="Shuffle">
                        <img src="assests/Images/icons/shuffle.png" alt="Shuffle">
                    </button>

                    <button class="controlButton previous" title="Previous " onclick="prevSong()">
                        <img src="assests/Images/icons/previous.png" alt="Previous">
                    </button>

                    <button class="controlButton play" title="Play" onclick="playSong()">
                        <img src="assests/Images/icons/play.png" alt="Play">
                    </button>
                    <button class="controlButton pause" title="Pause" style="display: none;" onclick="pauseSong()">
                        <img src="assests/Images/icons/pause.png" alt="Pause">
                    </button>

                    <button class="controlButton next" title="Next" onclick="nextSong()">
                        <img src="assests/Images/icons/next.png" alt="Next">
                    </button>

                    <button class="controlButton repeat" title="Repeat" onclick="setRepeat()">
                        <img src="assests/Images/icons/repeat.png" alt="Repeat">
                    </button>
                </div>

                <div class="playbackBar">

                    <span class="progressTime current">0:00</span>

                    <div class="progressBar">

                        <div class="progressBarBg">
                            <div class="progress"></div>
                        </div>

                    </div>

                    <span class="progressTime remaining">0:00</span>

                </div>

            </div>

        </div>

        <div id="nowPlayingRight">
            <div class="volumeBar">
                <button class="controlButton volume" title="Volume" onclick="setMute()">
                    <img src="assests/Images/icons/volume.png" alt="Volume">
                </button>
                <div class="progressBar">
                    <div class="progressBarBg">
                        <div class="progress"></div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>