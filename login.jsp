<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>

<style>
/* Body and background */
body{
    margin:0;
    font-family: Arial, sans-serif;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background: linear-gradient(135deg,#667eea,#764ba2);
}

/* Login card */
.login-box{
    background:white;
    padding:40px;
    border-radius:12px;
    width:320px;
    text-align:center;
    box-shadow: 0 0 20px rgba(0,0,0,0.3);
}

/* Heading */
.login-box h2{
    margin-bottom:25px;
    color:#333;
}

/* Input fields */
input{
    width:90%;
    padding:10px;
    margin:10px 0;
    border-radius:6px;
    border:1px solid #ccc;
    font-size:14px;
}

input:focus{
    border-color:#667eea;
    outline:none;
}

/* Stylish gradient button */
.login-btn{
    width:95%;
    padding:12px;
    background: linear-gradient(90deg, #ef5fff, #ddfe7b);
    border:none;
    color:white;
    font-size:16px;
    border-radius:25px;
    cursor:pointer;
    margin-top:10px;
    transition: 0.3s;
}

.login-btn:hover{
    transform: scale(1.05);
    box-shadow: 0 5px 15px rgba(0,0,0,0.3);
}

/* Footer text */
.footer{
    margin-top:15px;
    font-size:12px;
    color:#777;
}
</style>

</head>
<body>

<div class="login-box">

<h2>User Login</h2>

<form action="welcome.jsp" method="post">
<input type="text" name="username" placeholder="Enter Username" required>
<input type="password" name="password" placeholder="Enter Password" required>
<br><br>
<button type="submit" class="login-btn">Login</button>
</form>

<div class="footer">
Secure Login System
</div>

</div>

</body>
</html>