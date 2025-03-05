<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="style.css" rel="stylesheet" type="text/css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Cultivating Harvester</title>
</head>
<body>
    <div class="full-page">
        <div class="navbar">
            <div class="nav-logo">
                <img src="chlogo.jpeg">
                <div class="logo-text"><b>STAR HARVESTERS</b></div>
            </div>
            <nav>
                <ul id="MenuItems">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Services</a></li>
                    <li><a href="#">contact</a></li>
                </ul>
            </nav>
        </div>
        <div class="container">
            <div class="form-box">
                <form name="formfill" action="userRegister.jsp">
                    <h2>Register</h2>
                    <p id="result"></p>
                    <div class="input-box">
                        <i class='bx bx-user' ></i>
                        <input type="text" name="username" id="username" placeholder="UserName" required>
                    </div>
                    <div class="input-box">
                        <i class='bx bxs-envelope'></i>
                        <input type="email" name="Email" id="Email" placeholder="Email Id" required>
                    </div>
                    <div class="input-box">
                        <i class='bx bxs-contact' ></i>
                        <input type="text" name="Contact" id="Contact" placeholder="contact" required>
                    </div>
                    <div class="input-box">
                        <i class='bx bxs-lock' ></i>
                        <input type="password" name="password" id="password" placeholder="password" required>
                    </div>
                    <div class="input-box">
                        <i class='bx bxs-lock' ></i>
                        <input type="password" name="cpassword" placeholder="Confirm-password" required>
                    </div>
                    <div class="button"><input type="submit" class="btn" value="Register"></div>
                    <div class="group">
                        <span><a href="#">Forget-password</a></span>
                        <span><a href="login.html">Login</a></span>
                    </div>
                </form>
            </div>
        </div>
<!--<script src="index.js"></script>-->

</body>
</html>