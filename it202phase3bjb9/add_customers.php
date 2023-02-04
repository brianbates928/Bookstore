<!--Brian Bates it202-001 10/10/22 phase1-->
<?php
$cnx = new mysqli('localhost', 'root', '', 'bookstore');

if ($cnx->connect_error) {
    die('Connection failed: ' . $cnx->connect_error);
}
$fname = $_POST["fname"];
$lname = $_POST["lname"];

$mail = $_POST['email'];
$add=$_POST['address'];
$city=$_POST['city'];

$zip=$_POST['zip'];
$state=$_POST['state'];
$hear = $_POST['Category'];

if(strlen($fname)==0 || strlen($fname)>60){
    $error_message ="the first name must be 0-60 characters";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($lname)==0 || strlen($lname)>60){
    $error_message ="the last name must be 0-60 characters";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($mail)==0 || strlen($mail)>255){
    $error_message ="enter your email";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($add) == 0 || strlen($add)>60){
    $error_message ="your address must be between 0-60";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($city)== 0 || strlen($city)>40){
    $error_message ="the city must be 0-60 characters";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($zip)==0 || strlen($zip)>10){
    $error_message ="the zip code must be 0-10 characters";
    $cnx->close();
    include('database_error.php');
    exit();
}      
if(strlen($state)== 0 || strlen($state)==1 || strlen($state)>2){
    $error_message ="the state must be 2 characters";
    $cnx->close();
    include('database_error.php');
    exit();
}        
echo 'you have hit the submit button <br>';
        $query = 'SELECT * FROM customers';
        $cursor = $cnx->query($query);
        while ($row = $cursor->fetch_assoc()) {
            if ($row['emailAddress'] == $mail) {
                $error_message = "repeat email";
                $cnx->close();
                include('database_error.php');
                exit(1);
            }
        }
        $query = "INSERT INTO customers
VALUES (null,'$fname','$lname', '$mail','$add','$city','$state','$zip','$hear',Now())";
        $cursor = $cnx->query($query);
        
     echo ("Successful added to mailing!");

        #if (!mysqli_error($curson) != ""){
        #  $error_message =mysqli_error($curson);
        # $cnx->close();
        #include('database_error.php');
    
        #}
    
$cnx->close();
?>