<?php


?>
<!doctype html>
<html lang="">
<head>
    <title>!!Device Not Supported!!</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
    body{
        align-content: center;
        text-align: center;
        color: #1a1b1a;
        font-family: Calibri,'Helvetica','Helvetica Neue',Arial;
        background: #eef7ef;
        font-size: 35px;
       line-height: 25px;
    }
    h1{
        font-size: 30px;
    }h2{
         font-size: 25px;
     }h3{
          font-size: 20px;
      }h4{
           font-size: 16px;
       }h5{
            font-size: 14px;
        }h6{
             font-size: 14px;
         }

    .card {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%,-50%);
        width: 80%;
        height: 80%;
        /*margin: -150px;*/
        perspective: 500px;
    }
    .specialKeyForm{
        border: none;
        background: #1edb57;
        padding: 6px;
        color: #484b4c;
        outline: none;
        cursor: pointer;
    }


    .content {
        position: absolute;
        width: 100%;
        height: 100%;
        box-shadow: 0 0 15px rgba(0,0,0,0.1);

        transition: transform 1s;
        transform-style: preserve-3d;
    }

    .flip {
        transform: rotateY( 180deg ) ;
        transition: transform 0.5s;
    }

    .front,
    .back {
        position: absolute;
        padding: 10px;
        height: 100%;
        width: 100%;
        background: white;
        color: #03446A;
        text-align: center;
        font-size: 60px;
        border-radius: 5px;
        backface-visibility: hidden;
    }

    .back {
        color: black;
        transform: rotateY( 180deg );
    }
</style>
<body>


    <div class="card">
        <div class="content" id="content">
            <div class="front">
                <img src="assests/Images/icons/Device%20Error.svg" width="100px" alt="Device Not Supported">
                <br>
                <h1>Device Not Supported</h1>
                <h3>Your Current Device is not supported</h3>
                <h4>Please switch to Windows, Mac or Linux Machine.Or wait until the mobile version for this website arrives.</h4>
                <h5>Have the special key to access:</h5>
                <button class="specialKeyForm" onclick="flip()">Enter Special Key</button>
            </div>
            <div class="back">
                <h1 style="float: right; margin-top: -8px; margin-right: 3px; display: inline;" onclick="unflip();">&times;</h1>
                <form action="register.php" method="POST">
                    <h2>Enter Special key:</h2>
                    <input type="password" name="specialAccessKey"><br>
                    <input class="specialKeyForm" type="submit" name="useSpecialAccessKey" value="Submit">
                </form>
            </div>
        </div>
    </div>
<script>
    function flip() {
        var content = document.getElementById('content');
        content.classList.add('flip');
    }function unflip() {
        var content = document.getElementById('content');
        content.classList.remove('flip');
    }
</script>
</body>
</html>