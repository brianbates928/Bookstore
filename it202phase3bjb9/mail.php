<!DOCTYPE html>
<!--Brian Bates it202-001 10/10/22 phase1-->
<html lang="en">
<head>
   <meta charset="utf-8">
   <title>Brian's Bookstore</title>
   <link rel="stylesheet" href="style2.css">
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
      <div class="grid-container2">
      <form method ="post" action="add_customers.php" id="sampleForm">
        <table>
            <thead>
                <div class="grid-item">
                <tr>
                    <th colspan="2">Join mailing list!</th>
                </tr></div>
            <div class="grid-item">
                <tr>
                    <th>First Name:</th>
                    <th><input type="text" name="fname" id="fname" maxlength="255" minlength="1"  ><br></th>
                </tr></div>
            <div class="grid-item">
                <tr>
                    <th>Last Name:</th>
                    <th><input type="text" name="lname" id="lname" maxlength="255" minlength="1" ><br></th>
                </tr>
            </div>
            <div class="grid-item">
                <tr>
                    <th>Email Address:</th>
                    <th><input type="email" id="email" name="email" maxlength="255" minlength="1" ><br></th>
                </tr>
            </div>
            <div class="grid-item">
                <tr>
                    <th>Address:</th>
                    <th>
                        <input type="text" name="address"  id ="address" maxlength="255" minlength="1" ><br></th>
                </tr></div>
                <div class="grid-item"></div>
                <tr>
                    
                        <th>City:</th>
                        <th>
                            <input type="text" name="city"  id="city" maxlength="255" minlength="1" ><br></th>
                    </tr>
                    <div class="grid-item">
                    <tr> <th>Zip code:</th>
                   <th> <input type="text" name="zip" id="zip"  id="code" placeholder="5 digits"><br></th>
                </tr></div>
                <div class="grid-item">
                    <tr>
                    <th>State:</th>
                    <th><input type="text" name="state" id="state" placeholder="2 letter" > </th> </tr> </div>
                    <div class="grid-item">
                    <tr>
                        <th>Social Security number:</th>
                        <th><input type="password" name="ssn" id="ssn" placeholder="ssn"  > </th> </tr> </div>
                        <div class="grid-item">
                        <tr>
                    <th>How did you hear about us?</th>
                    <th>
                <select name="Category" id="Category" required>
                    <option>Google</option>
                    <option>Friend</option>
                    <option>Yellow page</option>
                    <option>other</option>
                </select>  </th>
                </tr></div>
                <div class="grid-item">
                <tr>
                    <th><input type="reset" id="reset" value="reset values"><br></th>
                <th><input type="submit" id="submit" value="submit"><br></th>
             
                </tr></div>
            </thead>
            <tbody>
            </div>
            <script type="text/javascript" language="javascript" src="javas.js"></script>

    </body>
    </html>
    
