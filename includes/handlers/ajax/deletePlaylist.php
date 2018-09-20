<?php
include('../../config.php');

if (isset($_POST['playlistId'])){
    $playlistId = $_POST['playlistId'];

    $playlistQuery = mysqli_query($con,"DELETE FROM playlist WHERE id='$playlistId'");
    $playlistQuery = mysqli_query($con,"DELETE FROM playlistsongs WHERE playlistId='$playlistId'");
}else{
    echo "critical error occurred call nick fury";
}
