<?php
    class Account{
        private $con;
        private $errorArray;

        public function __construct($con){
            $this->con = $con;
            $this->errorArray = Array();
        }
        public function login($un,$pw){
            $pw = md5($pw);
            $query = mysqli_query($this->con,"SELECT * FROM users WHERE username='$un' AND password='$pw'");
            if(mysqli_num_rows($query) == 1){
                return true;
            }else{
                array_push($this->errorArray, Constant::$loginFailed);
                return false;
            }
        }
        public function register($un, $fn, $ln, $em, $em2, $pw, $pw2){
            $this -> validateUsername($un);
            $this -> validateFirstname($fn);
            $this -> validateLastname($ln);
            $this -> validateEmail($em, $em2);
            $this -> validatePassword($pw, $pw2);

            if (empty($this->errorArray)){
                return $this->insertUserDetails($un, $fn, $ln, $em, $pw);
            }else{
                return false;
            }
        }

        public function getError($error){
            if (!in_array($error , $this->errorArray)){
                $error = "";
            }
            return "<span class='errorMessage'>".$error."</span>";
        }


        private function insertUserDetails($un, $fn, $ln, $em, $pw){
            $encryptedPw = md5($pw);
            $profilePic = "assests/Images/Profile/default.jpg";
            $date = date("Y-m-d");

            $result = mysqli_query($this->con,"INSERT INTO users VALUE ('','$un', '$fn', '$ln','$em', '$encryptedPw','$date', '$profilePic')");
            return $result;
        }
        private function validateUsername($un){
            if (strlen($un) > 25 || strlen($un) < 5){
                array_push($this->errorArray,Constant::$userNameCharacters);
                return;
            }

            $checkUsernameQuery = mysqli_query($this->con,"SELECT username FROM users WHERE username='$un'");
            if (mysqli_num_rows($checkUsernameQuery) != 0){
                array_push($this->errorArray,Constant::$userNameTaken);
                return;
            }
        }
        private function validateFirstname($fn){
            if (strlen($fn) > 25 || strlen($fn) < 3){
                array_push($this->errorArray,Constant::$fistNameCharacters);
                return;
            }
        }
        private function validateLastname($ln){
            if (strlen($ln) > 25 || strlen($ln) < 3){
                array_push($this->errorArray,Constant::$lastNameCharacters);
                return;
            }
        }
        private function validateEmail($em , $em2){
            if ($em != $em2){
                array_push($this->errorArray,Constant::$emailsDoNotMatch);
                return;
            }
            if (!filter_var($em, FILTER_VALIDATE_EMAIL)){
                array_push($this->errorArray,Constant::$emailInvalid);
            }

            $checkEmailQuery = mysqli_query($this->con,"SELECT email FROM users WHERE email='$em'");
            if (mysqli_num_rows($checkEmailQuery) != 0){
                array_push($this->errorArray,Constant::$emailTaken);
                return;
            }
        }
        private function validatePassword($pw , $pw2){
            if ($pw != $pw2){
                array_push($this->errorArray,Constant::$passwordsDoNotMatch);
                return;
            }
            if (preg_match("/[^A-Za-z0-9]/",$pw)){
                array_push($this->errorArray,Constant::$passwordsNotAlphanumeric);
                return;
            }
            if (strlen($pw) > 25 || strlen($pw) < 8){
                array_push($this->errorArray,Constant::$passwordCharacters);
                return;
            }
        }
    }
