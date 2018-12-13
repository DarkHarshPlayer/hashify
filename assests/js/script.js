var currentPlaylist = [];
var shufflePlaylist = [];
var tempPlaylist = [];
var audioElement;
var mouseDown = false;
var currentIndex = 0;
var repeat = false;
var shuffle = false;
var userLoggedIn;
var timer;
var target;
var menu = $('.optionMenu');
let manualPlaylist = false;
let isLyricsOn = false;
let loadingBar ;
let currentLoad;
let isTweak1 = false;
let tweak1ClickCount = 0;

$(document).click(function (click) {
         target = $(click.target);

         if (!target.hasClass('item') && !target.hasClass('optionButton')){
             hideOptionsMenu();
         }
});

$(document).ready(function () {
    $('#mainViewContainer').scroll(function () {
        hideOptionsMenu();
    });
    bgColor();
});

function tweak1Count() {
    tweak1ClickCount++;
    if (tweak1ClickCount === 7){
        tweak1ClickCount = 0;
        tweak1();
    }
}
function tweak1() {
    if (isTweak1){
        $('#nowPlayingBarContainer').css({'bottom':'0','height':'90px','top':''});
        $('#lyricsPanel').css({'transform':'translate(-10%,-105%)'});
        $('#topContainer').css('position','fixed');
        $('#topContainer').css('top','0');
        $('#navBarContainer').css('top','0');
        console.log('cheat deactivated');

    }else {
        $('#nowPlayingBarContainer').css({'top':'0','height':'90px','bottom':''});
        $('#topContainer').css({'position':'fixed','top':'90px'});
        $('#navBarContainer').css('top','90px');
        $('#lyricsPanel').css({'transform':'translate(-10%,30%)'});
        console.log('cheat activated');
    }
    isTweak1 = !isTweak1;
}

function bgColor(){
    let r = Math.floor(Math.random()*(115 - 43 + 1) + 43);
    let g = Math.floor(Math.random()*(115 - 43 + 1) + 43);
    let b = Math.floor(Math.random()*(115 - 43 + 1) + 43);
    let rgba = 'rgba('+r+','+g+','+b+',1)';

    $('#topContainer').css('background','-webkit-linear-gradient(top, '+rgba+',#000)');
}

$(document).on('change','select.playlist',function () {
    var select = $(this);
    var  playlistId = select.val() ;

   var songId = select.prev('.songId').val();

    $.post('includes/handlers/ajax/addToPlaylist.php',{playlistId: playlistId, songId: songId})
        .done(function (error) {
            if (error != ""){
                alert(error);
                return;
            }
            hideOptionsMenu();
            select.val("");

        });

});
function removefromPlaylist(button, playlistId) {
    var songId = $(button).prevAll(".songId").val();
    $.post("includes/handlers/ajax/removeFromPlaylist.php",{ playlistId : playlistId, songId: songId  })
        .done(function (error) {
            if (error != ""){
            alert(error);
            return;
        }
            openPage('playlist.php?id='+playlistId);
    });
}
$(window).on('popstate',function(event) {
   // console.log("location: " + document.location.href);
    openPageExec(document.location.href);
});
function  openPage(url) {
    history.pushState(null,null,url);
    openPageExec(url);
}

function openPageExec(url){
     $('#loadingCover').show();
    loadingBar = document.getElementById('loadingBar');
    startLoadingBar();
    if (timer!=null){
        clearTimeout(timer);
    }
    if (url.indexOf('?') == -1) {
        url = url + "?";
    }
    var encodedUrl = encodeURI(url + "&userLoggedIn="+userLoggedIn);
   $("#mainContent").load(encodedUrl , function () {
         $('#loadingCover').hide();

        completeLoadingBar();
       $("#mainViewContainer").scrollTop(0);

   });
}
let s;
let xs;
function startLoadingBar() {
    loadingBar.style.width = 0;
    loadingBar.style.display = 'block';
    xs = setInterval(inc1to80,2);
    currentLoad = parseInt(loadingBar.style.width);
}

function inc1to80() {
    currentLoad += 0.2;
    if(currentLoad >= 80){
        // console.log(currentLoad);
        clearInterval(xs);
      //  console.log('its 80');
    }
  //  console.log(loadingBar.style.width);
    loadingBar.style.width = currentLoad+'%';

}
function completeLoadingBar() {
     s = setInterval(inc1to100,1);
     currentLoad = parseInt(loadingBar.style.width);
}

function inc1to100() {

     currentLoad += 0.5;

    if(currentLoad >= 103){
   //     console.log(currentLoad);
        clearInterval(s);
    //    console.log('its done');
       loadingBar.style.display = 'none';
    }
   // console.log(loadingBar.style.width);
    loadingBar.style.width = currentLoad+'%';

}
function addSongsToDataBase(songtitle,songartist,songalbum,songgenre,songduration,songpath,songalbumOrder) {
    let plays = 0;
    let title = $("."+songtitle).val();
    let album = $("."+songalbum).val();
    let artist = $("."+songartist).val();
    let genre = $("."+songgenre).val();
    let duration = $("."+songduration).val();
    let path = $("."+songpath).val();
    let albumOrder = $("."+songalbumOrder).val();
    let lyricPath = path;
    lyricPath = lyricPath.replace('.mp3','.txt');
    lyricPath = lyricPath.replace('.flac','.txt');
    lyricPath = lyricPath.replace('.ogg','.txt');
    lyricPath = lyricPath.replace('.m4a','.txt');
    lyricPath = lyricPath.split(' ').join('%20');
    lyricPath = "/hashify"+lyricPath;

    $.post("includes/handlers/ajax/insertSongIntoDatabase.php",{title: title, album: album, artist: artist  , genre: genre, duration: duration, path: path, albumOrder: albumOrder,plays: plays,lyrics: lyricPath})
        .done(function (response) {
            $(".errorInsertingSong").text(response);
        });

}function addAlbumToDataBase(songtitle,songartist,songgenre,songpath) {
    let title = $("."+songtitle).val();
    let artist = $("."+songartist).val();
    let genre = $("."+songgenre).val();
    let path = $("."+songpath).val();

    $.post("includes/handlers/ajax/insertAlbumIntoDatabase.php",{title: title,  artist: artist  , genre: genre,  ArtworkPath: path,})
        .done(function (response) {
            $(".errorInsertingSong").text(response);
        });

}function addArtistToDataBase(artistName,artistImage) {
    let title = $("."+artistName).val();
    let path = $("."+artistImage).val();

    $.post("includes/handlers/ajax/insertArtistIntoDatabase.php",{title: title,  ArtworkPath: path,})
        .done(function (response) {
            $(".errorInsertingArtist").text(response);
        });

}

function hideOptionsMenu() {
     menu = $('.optionMenu');
    if (menu.css("display") == "block"){
        menu.css('display','none');
    }
}
function updateEmail(emailClass) {
    var emailValue = $("."+emailClass).val();

    $.post("includes/handlers/ajax/updateEmail.php",{email: emailValue , userName: userLoggedIn})
        .done(function (response) {
            $("."+emailClass).nextAll(".message").text(response)
        })

}function updatePassword(oldPasswordClass,newPasswordClass1,newPasswordClass2) {
    var oldPassword = $("."+oldPasswordClass).val();
    var newPassword1 = $("."+newPasswordClass1).val();
    var newPassword2 = $("."+newPasswordClass2).val();

    $.post("includes/handlers/ajax/updatePassword.php",{oldPassword: oldPassword, newPassword1: newPassword1,  newPassword2: newPassword2  , userName: userLoggedIn})
        .done(function (response) {
            $("."+oldPasswordClass).nextAll(".message").text(response)
        })

}
function playNext(e) {
    var songId = menu.find('.songId').val();
    var currentPlaying = currentPlaylist[currentIndex];
    currentIndex = currentPlaylist.indexOf(audioElement.currentlyPlaying.id);
     if (manualPlaylist) {
         var nextPosition = currentIndex+1;
         currentPlaylist.splice(nextPosition,0,songId);

    }else{
         currentPlaylist = [];
         currentPlaylist.push(currentPlaying);
         currentPlaylist.push(songId);
         currentIndex = 0;

     }

    manualPlaylist = true;

    hideOptionsMenu();


}

function addSongToQueue() {
    var songId = menu.find('.songId').val();
    var currentPlaying = currentPlaylist[currentIndex];

     if (manualPlaylist){
        currentPlaylist.push(songId);
     }else {
         currentPlaylist = [];
         currentPlaylist.push(currentPlaying);
         currentPlaylist.push(songId);
         currentIndex = 0;

     }
    manualPlaylist = true;
    hideOptionsMenu();

}
function logOut() {
    $.post("includes/handlers/ajax/logOut.php",function () {
       location.reload();
    });
}

function showOptionsMenuCM(event,elem) {
    var songId = $(elem).find(".songIdCM").val();

    //console.log("X: "+event.x+" Y:"+event.y);

    //console.log(button);
     menu = $(".optionMenu");
     var menuWidth = menu.width();

     menu.find('.songId').val(songId);

     var scrollTop = $(window).scrollTop();
     var elementOffset = event.y;

    var top = elementOffset-scrollTop;
     var left = event.x;

    menu.css({"top": top +"px" , "left" : left + "px" , "display": "block"});

    // // console.log(menu.offset().top);

}


function showOptionsMenu(button) {
    var songId = $(button).prevAll(".songId").val();

    //console.log(button);
     menu = $(".optionMenu");
    var menuWidth = menu.width();

    menu.find('.songId').val(songId);

    var scrollTop = $(window).scrollTop();
    var elementOffset = $(button).offset().top;

    var top = elementOffset-scrollTop;
    var left = $(button).position().left;

    menu.css({"top": top +"px" , "left" : left + "px" , "display": "block"});

   // console.log(menu.offset().top);

}

function createPlaylist() {
    var namePl = prompt("please enter the name of the playlist");

    if (namePl != null){
        $.post("includes/handlers/ajax/createPlaylist.php",{name: namePl, userName: userLoggedIn}).done(function (error) {
            openPage('yourMusic.php');
            if (error != ""){
                alert(error);
                return;
            }
        });
    }

}
function deletePlaylist(playlistId) {
    var isConfirm = confirm("Are you sure you want to delete this playlist");

    if (isConfirm){
       // console.log('rem '+playlistId);
        $.post("includes/handlers/ajax/deletePlaylist.php",{ playlistId : playlistId  }).done(function (error) {
            openPage('yourMusic.php');
            if (error != ""){
                alert(error);
                return;
            }
        });
    }

}
function playFirstTrack() {
    setTrack(tempPlaylist[0],tempPlaylist,true);
}
function formatTime(sec) {
    var time = Math.round(sec)
    var minutes = Math.floor(time / 60 );
    var seconds = time - (minutes*60);

    var adZero = (seconds < 10) ? "0" : "";


    return minutes+":"+adZero+seconds;
}
function updateTimeProgressBar(audio) {
    $(".progressTime.current").text(formatTime(audio.currentTime));
    $(".progressTime.remaining").text(formatTime(audio.duration-audio.currentTime));

    var duration = audio.currentTime / audio.duration * 100;
    $(".playbackBar .progress").css('width',duration+"%");


}

function updateVolumeProgressBar(audio) {
    var volume = audio.volume * 100;
    $(".volumeBar .progress").css('width',volume+"%");
}
function Audio() {
    this.currentlyPlaying;
    this.audio = document.createElement('audio');
    this.audio.addEventListener("ended",function () {
       nextSong();
    });
    this.audio.addEventListener("canplay",function () {
        var dur = formatTime(this.duration);
            $(".progressTime.remaining").text(dur);
    });
    this.audio.addEventListener("timeupdate",function () {
       if (this.duration){
           updateTimeProgressBar(this);
       }
    });
    this.audio.addEventListener("volumechange",function () {
        updateVolumeProgressBar(this);
    });
    this.setTrack = function (track) {
        this.currentlyPlaying = track;
        this.audio.src = "/hashify"+track.path;
    };

    this.play = function () {
        this.audio.play();
    };
    this.pause = function () {
        this.audio.pause();
    };
    this.setTime = function (seconds) {
        this.audio.currentTime = seconds;
    }
}

function pausePlaySpacebar(e) {
    if (e.keyCode == 32) {
        if (audioElement.audio.paused) {
            playSong();
        } else {
            pauseSong();
        }
    }
}
//
// $(window).keyup(function (event) {
//     pausePlaySpacebar(event);
// });


function playingBarFocus() {

    window.addEventListener('keydown', function (e){
        pausePlaySpacebar(e);
    });

}
function playingBarFocusOut() {

    window.removeEventListener('keydown', function (e){
        pausePlaySpacebar(e);
    });

}

