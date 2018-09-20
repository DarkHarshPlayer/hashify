<?php
    ob_start();
    session_start();
    $timezone = date_default_timezone_set('Indian/Christmas');
    $con = mysqli_connect("127.0.0.1","root","","hashify");

    if (mysqli_connect_errno()){
        echo "failed to connect: ".mysqli_connect_errno();
    }