<!--Brian Bates it202-001 10/10/22 phase1-->

<?php
$cnx = new mysqli('localhost', 'root', '', 'bookstore');

if ($cnx->connect_error) {
    die('Connection failed: ' . $cnx->connect_error);
}
$name = $_POST["name"];
$desc = $_POST['De'];
$code=$_POST['code'];
$price=$_POST['price'];
$genre=$_POST['Category'];

if ($genre=="horror"){
    $genre = 1;

}
if ($genre=="romance"){
    $genre = 2;

}
if ($genre=="sci-fi"){
    $genre = 3;

}
if ($genre=="non-fiction"){
    $genre = 4;

}
if ($genre=="other"){
    $genre = 5;

}
if($genre==""){
    $error_message ="pick a genre";
    $cnx->close();
    include('database_error.php');
    exit();
}
if ($name=="" || strlen($name)>60){
    $error_message ="name needs to be between 0 and 60 characters";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($code)){
    $error_message ="the code must be 0-10 alphanumerics";
    $cnx->close();
    include('database_error.php');
    exit();
}


if(!ctype_alnum($code)){
    $error_message ="only use alphanumeric code";
    $cnx->close();
    include('database_error.php');
    exit();
}
if(strlen($price)>10 || strlen($price)){
    $error_message ="the price has a max of ten digits";
    $cnx->close();
    include('database_error.php');
    exit();
}

$query="INSERT INTO books (bookID, bookCategoryID, bookCode, bookName, description, price, dateAdded)
VALUES (null,'$genre','$code', '$name','$desc','$price',Now())";
$cursor = $cnx->query($query);

echo ("Successfully added the book!");


    

$cnx->close();
?>