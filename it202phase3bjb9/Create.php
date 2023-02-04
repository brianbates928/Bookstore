<!DOCTYPE html>
<!--Brian Bates it202-001 10/10/22 phase1-->
<html lang="en">
<head>
   <meta charset="utf-8">
   <title>Brian's Bookstore</title>
   <link rel="icon" type="image/x-icon" href="images/b.jpg">
  <link rel="stylesheet" href="style2.css">
</head>
<body>
    <div class="topnav">
        <a class="active" href="home.html">Home!</a>
        <a href="Create.php">Create!</a>
        <a href="About.html">About us!</a>
        <a href="Contact.php">Contact us!</a>
        <a href="books.php">List all books!</a>
      </div> 
      <div class="grid-container2">
      <form method ="post" action="add_book.php" id="sampleForm">
        <table>
            <thead>
                <div class="grid-item">
                <tr>
                    <th colspan="2">Student Form</th>
                </tr>
                </div>
                <div class="grid-item">
                <tr>
                    <th>Book Name:</th>
                    <th><input type="text" name="name" id="name" maxlength="255" minlength="1"  ><br></th>
                </tr>
                <div class="grid-item">
                <tr>
                    <th>Book Description:</th>
                    <th><input type="text" name="De" id="De" minlength="1" maxlength="255"><br></th>
                </tr></div>
                <div class="grid-item">
                <tr>
                    <th>Book Code:</th>
                    <th>
                        <input type="text" name="code" id="code" placeholder="alphanumeric characters"><br></th>
                </tr></div>
                <div class="grid-item">
                <tr>
                    <th>Price:</th>
                    <th><input type="text" name="price" id="price" placeholder="max 10 digits" minlength="1"><br></th>
                </tr>
                <div class="grid-item">
                <tr>
                    <th>Genre</th>
                    <th>
                <select name="Category" id = "Category">
                    <option>horror</option>
                    <option>romance</option>
                    <option>sci-fi</option>
                    <option>non-fiction</option>
                    <option>other</option>
                </select>  </th>
                </tr></div>
                <div class="grid-item">
                <tr>
                    <th><input type="reset" id="reset" value="reset values"><br></th>
                <th><input type="submit" id="submit" value="Submit Order"><br></th>
                </tr>
                </div>
            </thead>
            <tbody>

            </tbody>
        </table>
    </form>
    </div>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <br>
    <footer>Ⓒ Brian's Bookstore 2022  </footer>
    <script type="text/javascript" language="javascript" src="javas.js"></script>

      </body>
      </html>
