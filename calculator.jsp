<html>
<head>
<title>JSP Calculator</title>
</head>

<body>

<h2>Simple Calculator</h2>

<form method="post">
    Enter First Number: 
    <input type="text" name="num1"><br><br>

    Enter Second Number: 
    <input type="text" name="num2"><br><br>

    Select Operation:
    <select name="op">
        <option value="+">Addition (+)</option>
        <option value="-">Subtraction (-)</option>
        <option value="*">Multiplication (*)</option>
        <option value="/">Division (/)</option>
    </select><br><br>

    <input type="submit" value="Calculate">
</form>

<hr>

<%
String n1 = request.getParameter("num1");
String n2 = request.getParameter("num2");
String op = request.getParameter("op");

if(n1 != null && n2 != null)
{
    double a = Double.parseDouble(n1);
    double b = Double.parseDouble(n2);
    double result = 0;

    if(op.equals("+"))
        result = a + b;
    else if(op.equals("-"))
        result = a - b;
    else if(op.equals("*"))
        result = a * b;
    else if(op.equals("/"))
        result = a / b;
%>

<h3>Result: <%= result %></h3>

<%
}
%>

</body>
</html>