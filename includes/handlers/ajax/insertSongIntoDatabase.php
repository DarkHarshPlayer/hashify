<?php
include('../../config.php');

if (isset($_POST['title']) && isset($_POST['album'])&& isset($_POST['artist'])&& isset($_POST['genre'])&& isset($_POST['duration'])&& isset($_POST['path'])&& isset($_POST['albumOrder'])&& isset($_POST['plays'])){
    $title = $_POST['title'];
    $album = $_POST['album'];
    $artist = $_POST['artist'];
    $genre = $_POST['genre'];
    $duration = $_POST['duration'];
    $path = $_POST['path'];
    $albumOrder = $_POST['albumOrder'];
    $plays = $_POST['plays'];

    if ($title == "" || $album == "" || $artist == "" || $genre == "" || $duration == "" || $path == "" || $albumOrder == ""){
        echo "GET LOST SQUIDWARD";
    }else{
        $query = mysqli_query($con,"INSERT INTO songs VALUE ('','$title','$artist','$album','$genre','$duration','$path','$albumOrder','$plays')");
       echo "Task executed successfully Song:$title Is successfully Added To DATABASE. Because I AM BATMAN . Lets eat Swarma ";
       // echo "\"INSERT INTO songs VALUE ('','$title','$artist','$album','$genre','$duration','$path','$albumOrder','$plays')\"";
      //   echo "<br>Song:$title , artist:$artist , album:$album , genre:$genre , duration:$duration || path:$path ";
    }

}else{
    echo "input error Call carol danverse";
}