<?php
class Artist{
    private $con;
    private $id;

    public function __construct($con,$id){
        $this->con = $con;
       $this->id = $id;
    }
    public function getName(){
        $artistQuery = mysqli_query($this->con, "SELECT name FROM artist WHERE id='$this->id'");
        $artistName = mysqli_fetch_array($artistQuery);
        return $artistName['name'];
    }
    public function getSongId(){
        $query = mysqli_query($this->con,"SELECT id FROM songs WHERE artist='$this->id' ORDER BY plays DESC ");
        $array =  array();
        while ($row = mysqli_fetch_array($query)){
            array_push($array,$row['id']);
        }
        return $array;
    }
    public function getId(){
        return $this->id;
    }
    public function getArtistImage(){
        $artistImageQuery = mysqli_query($this->con, "SELECT * FROM artist WHERE id='$this->id'");
        $artist = mysqli_fetch_array($artistImageQuery);
        return $artist['artistImagePath'];
    }

    public static function getDropdownArtist($con){
        $dropDown = ' <select id="songArtistName" class="insertSongArtist" name="insertSongArtist">
                        ';

        $query = mysqli_query($con,"SELECT * FROM artist");
        while ($row = mysqli_fetch_array($query)){
            $id = $row['id'];
            $name = $row['name'];
            $dropDown = $dropDown."<option value='$id'>$name</option>";
        }
        return $dropDown."</select>";
    }

}
