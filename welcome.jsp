<%
String user = request.getParameter("username");
%>

<!DOCTYPE html>
<html>
<head>
<title>Welcome Page</title>

<style>
body{
    margin:0;
    font-family:Arial;
    height:100vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background:linear-gradient(135deg,#4facfe,#00f2fe);
}

.box{
    background:white;
    padding:40px;
    border-radius:10px;
    box-shadow:0 0 15px gray;
    text-align:center;
    width:320px;
}

h2{
    color:#4facfe;
}

button{
    margin-top:20px;
    padding:10px 20px;
    background:#4facfe;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#2f8cff;
}
</style>

</head>

<body>

<div class="box">

<h2>Login Successful</h2>

<p>Welcome <b><%= user %></b></p>

<form action="login.jsp">
<button type="submit">Logout</button>
</form>

</div>

</body>
</html>