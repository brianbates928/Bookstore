<!DOCTYPE html>
<!--Brian Bates it202-001 10/10/22 phase1-->
<html lang="en">
<head>
   <meta charset="utf-8">
   <title>Brian's Bookstore</title>
   <link rel="stylesheet" href="style.css">
   <link rel="icon" type="image/x-icon" href="images/b.jpg">

</head>
<body>
    <div class="topnav">
        <a class="active" href="home.html">Home!</a>
        <a href="Create.php">Create!</a>
        <a href="About.html">About us!</a>
        <a href="Contact.php">Contact us!</a>
        <a href="books.php">List all books!</a>
      </div> 
<table align="center" border="1">
<?php
    $cnx = new mysqli('localhost', 'root', '', 'bookstore');

    if ($cnx->connect_error)
        die('Connection failed: ' . $cnx->connect_error);
    
    $query = 'SELECT * FROM books';
    $cursor = $cnx->query($query);
    echo '<tr> <td> bookID </td> <td> bookCategoryID </td><td>bookCode</td><td>bookName</td><td>description</td><td>price</td><td>dateAdded</td></tr>';
while ($row = $cursor->fetch_assoc()) {
  
        echo '<tr>';
    echo '<td>' . $row['bookID'] . '<br>' . '</td><td>' . $row['bookCategoryID'] . '</td><td>' . $row['bookCode'] . '</td><td>' . $row['bookName'] . '</td><td>' . $row['description'] . '</td><td>' . $row['price'] . '</td><td>' . $row['dateAdded'];
        echo '</td></tr>';
       

    }



    $cnx->close();
?>
</table>
<footer>Ⓒ Brian's Bookstore 2022  </footer>
</body>
</html>