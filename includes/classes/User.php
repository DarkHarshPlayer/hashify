<?php
class User{
    private $con;
    private $userName;

    public function __construct($con, $userName){
        $this->con = $con;
        $this->userName= $userName;
    }
    public function getUserName(){
        return $this->userName;
    }
    public function getEmail(){
        $query = mysqli_query($this->con,"SELECT email FROM users WHERE username='$this->userName'");
        $row = mysqli_fetch_array($query);
        return $row['email'];
    }
    public function getFirstAndLastName(){
        $query = mysqli_query($this->con,"SELECT concat(firstName,' ',lastName) as name FROM users WHERE username='$this->userName'");
        $row = mysqli_fetch_array($query);
        return  $row['name'];
    }public function getFirstName(){
        $query = mysqli_query($this->con,"SELECT firstName as name FROM users WHERE username='$this->userName'");
        $row = mysqli_fetch_array($query);
        return  $row['name'];
    }
}
