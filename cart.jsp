<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Shopping Cart Simulator</title>

<style>
body{
    background-color:#f2f2f2;
    font-family:Arial;
}

.container{
    width:500px;
    margin:100px auto;
    background:white;
    padding:25px;
    border-radius:10px;
    box-shadow:0px 0px 10px gray;
    text-align:center;
}

h2{
    color:#2c3e50;
}

table{
    width:100%;
    margin-top:15px;
}

th{
    background:#3498db;
    color:white;
    padding:8px;
}

td{
    padding:8px;
}

input[type="number"]{
    width:60px;
}

button{
    margin-top:15px;
    padding:10px 20px;
    background:#27ae60;
    color:white;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

button:hover{
    background:#219150;
}

#total{
    margin-top:20px;
    font-size:20px;
    color:#e74c3c;
}
</style>

<script>
function calculateTotal(){

    var price1 = 50;
    var price2 = 30;
    var price3 = 80;
    var price4 = 120;
    var price5 = 60;

    var q1 = document.getElementById("q1").value;
    var q2 = document.getElementById("q2").value;
    var q3 = document.getElementById("q3").value;
    var q4 = document.getElementById("q4").value;
    var q5 = document.getElementById("q5").value;

    var total = (price1*q1) + (price2*q2) + (price3*q3) + (price4*q4) + (price5*q5);

    document.getElementById("total").innerHTML="Grand Total = Rs. " + total;
}
</script>

</head>

<body>

<div class="container">

<h2>Shopping Cart</h2>

<table border="1">
<tr>
<th>Item</th>
<th>Price (Rs.)</th>
<th>Quantity</th>
</tr>

<tr>
<td>Pen</td>
<td>50</td>
<td><input type="number" id="q1" value="0"></td>
</tr>

<tr>
<td>Notebook</td>
<td>30</td>
<td><input type="number" id="q2" value="0"></td>
</tr>

<tr>
<td>Bag</td>
<td>80</td>
<td><input type="number" id="q3" value="0"></td>
</tr>

<tr>
<td>Water Bottle</td>
<td>120</td>
<td><input type="number" id="q4" value="0"></td>
</tr>

<tr>
<td>Pencil Box</td>
<td>60</td>
<td><input type="number" id="q5" value="0"></td>
</tr>

</table>

<button onclick="calculateTotal()">Submit</button>

<div id="total"></div>

</div>

</body>
</html>