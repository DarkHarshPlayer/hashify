<?php
include('../../config.php');

if (isset($_POST['title']) &&  isset($_POST['artist'])&& isset($_POST['genre'])&&  isset($_POST['ArtworkPath'])){
    $title = $_POST['title'];
    $artist = $_POST['artist'];
    $genre = $_POST['genre'];
    $path = $_POST['ArtworkPath'];


    if ($title == "" || $artist == "" || $genre == ""  || $path == "" ){
        echo "THANOS IS COMING";
    }else{
        $query = mysqli_query($con,"INSERT INTO albums VALUE ('','$title','$artist','$genre','$path')");
        //echo "INSERT INTO albums VALUE ('','$title','$artist','$genre','$path')";
        echo "Task executed successfully Album:$title Is successfully Added To DATABASE. Because I AM BATMAN .";
         //echo "Song:$title , artist:$artist ,  genre:$genre , path:$path ";
    }

}else{
    echo "input error Call Clint Barton";
}