<?php
include("../../config.php");


if ((!isset($_POST['song'])) || !isset($_POST['user']) || !isset($_POST['playlist'])){
    echo "no data input";

}else{
    $song = $_POST['song'];
    $playlist = $_POST['playlist'];
    $user = $_POST['user'];

    $query = mysqli_query($con,"UPDATE users SET lastPlayedSong = $song , lastPlayedPlaylist = '$playlist' WHERE username='$user'");

    echo "updated last played in DB = ****".$song." + ".$playlist." + ".$user."*****";
}