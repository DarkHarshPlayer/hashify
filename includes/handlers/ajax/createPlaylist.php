<?php
    include('../../config.php');

    if (isset($_POST['name']) && isset($_POST['userName']) ){

        $name = $_POST['name'];
        $userName = $_POST['userName'];
        $date = date("Y-m-d");

        $query = mysqli_query($con,"INSERT INTO playlist VALUE('','$name','$userName','$date')");

    }else{
        echo "name or username parameter not parsed into file";
    }
