<?php
include('includes/includedFiles.php');
?>

<h1 class="pageHeadingBig">You Might Like</h1>

<div class="gridViewContainer" style="margin-left: 30px;">

    <?php
    $albumQuery = mysqli_query($con,"SELECT * FROM albums ORDER BY RAND() LIMIT 30");

    while ($row = mysqli_fetch_array($albumQuery)){
        echo "<div class='gridViewItem'>
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


