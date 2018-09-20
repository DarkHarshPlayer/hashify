<?php
    include('includes/config.php');
    include('includes/classes/Account.php');
    include('includes/classes/Constant.php');
    $account = new Account($con);
    include('includes/handlers/register-handler.php');
    include('includes/handlers/login-handler.php');

    function getInputValue($name){
        if(isset($_POST[$name])){
            echo $_POST[$name];
        }
    }

?>
<html>
<head>
    <title>Register to Hashify</title>
    <script src="assests/js/jquery.js"></script>
    <script src="assests/js/register.js"></script>
    <link rel="shortcut icon" href="/hashify/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/hashify//favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="assests/css/register.css">
</head>
<body>
    <?php
        if(isset($_POST['registerButton'])){
         echo '    <script>
        $(document).ready(function () {
            $("#loginForm").hide();
            $("#registerForm").show();
        });
    </script>';
        }else{
            echo ' <script>
        $(document).ready(function () {
            $("#loginForm").show();
            $("#registerForm").hide();
        });
    </script>';
        }

    ?>


    <div id="background">


    <div id="alphaBg">
            <div id="loginContainer">
                <div id="inputContainer">
                    <form id="loginForm" action="register.php" method="POST">
                        <h2>Login To Your account</h2>
                       <p>
                           <?php echo $account->getError(Constant::$loginFailed);?>
                           <label for="loginUsername">Username</label>
                           <input type="text" id="loginUsername" name="loginUsername" value="<?php getInputValue('loginUsername')?>" placeholder="Eg. SamWilson123" required>
                       </p>
                        <p>
                            <label for="loginPassword">Password</label>
                            <input type="password" id="loginPassword" name="loginPassword"  placeholder="Your Password" required>
                        </p>
                        <button type="submit" name="loginButton">Log In</button>
                        <div class="haveAccountText">
                            <span id="hideLogin">Don't have account yet? Signup here.</span>
                        </div>
                    </form>




                    <form id="registerForm" action="register.php" method="POST">
                        <h2>Create Your Free Account</h2>
                        <p>
                            <?php echo $account->getError(Constant::$userNameCharacters);?>
                            <?php echo $account->getError(Constant::$userNameTaken);?>
                            <label for="username">Username</label>
                            <input type="text" id="username" name="username" placeholder="Eg. SamWilson123" value="<?php getInputValue('username')?>" required>
                        </p>
                        <p>
                            <?php echo $account->getError(Constant::$fistNameCharacters);?>
                            <label for="firstName">First name</label>
                            <input type="text" id="firstName" name="firstName"  value="<?php getInputValue('firstName')?> "required>
                        </p>
                        <p>
                            <?php echo $account->getError(Constant::$lastNameCharacters);?>
                            <label for="lastName">Last Name</label>
                            <input type="text" id="lastName" name="lastName"   value="<?php getInputValue('lastName')?>" required>
                        </p>
                        <p>
                            <?php echo $account->getError(Constant::$emailsDoNotMatch);?>
                            <?php echo $account->getError(Constant::$emailInvalid);?>
                            <?php echo $account->getError(Constant::$emailTaken);?>
                            <label for="email">Email</label>
                            <input type="email" id="email" name="email" placeholder="Eg. Samwilson123@gmail.com" value="<?php getInputValue('email')?>"  required>
                        </p>
                        <p>
                            <label for="email2">Confirm Email</label>
                            <input type="email" id="email2" name="email2" placeholder="Email" value="<?php getInputValue('email2')?>"  required>
                        </p>

                        <p>
                            <?php echo $account->getError(Constant::$passwordsDoNotMatch);?>
                            <?php echo $account->getError(Constant::$passwordsNotAlphanumeric);?>
                            <?php echo $account->getError(Constant::$passwordCharacters);?>
                            <label for="password">Password</label>
                            <input type="password" id="password" name="password" placeholder="Password" required>
                        </p>
                        <p>
                            <label for="password2">Confirm password</label>
                            <input type="password" id="password2" name="password2" placeholder="Password" required>
                        </p>
                        <button type="submit" name="registerButton">Register</button>
                        <div class="haveAccountText">
                            <span id="hideRegister">Already have an account. Login here.</span>
                        </div>
                    </form>
                </div>
                <dv id="loginText">
                    <h1>A music streaming site created BY Harsh Banjare.</h1>
                    <h2>Listen to lots of songs for free</h2>
                    <ul>
                        <li>Pop Songs(Only English)</li>
                        <li>High quality streaming</li>
                        <li>Its offline</li>
                    </ul>
                </dv>
            </div>
        </div>
    </div>


</body>
</html>