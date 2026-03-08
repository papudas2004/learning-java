<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Smart Shopping Cart System</title>

<style>

body{
margin:0;
padding:0;
font-family:Segoe UI, sans-serif;
display:flex;
justify-content:center;
align-items:center;
height:100vh;

background:
linear-gradient(rgba(10,25,47,0.25),rgba(10,25,47,0.25)),
url('background.jpg');

background-size:cover;
background-position:center;
}

/* CARD */

.container{
background:white;
padding:40px;
border-radius:25px;
width:500px;
text-align:center;
box-shadow:0 20px 50px rgba(0,0,0,0.5);
}

/* TITLE */

h2{
margin-bottom:25px;
font-size:28px;
color:#1a2a6c;
}

/* TABLE */

table{
width:100%;
border-collapse:collapse;
margin-bottom:20px;
}

/* HEADER */

th{
background:#2b60de;
color:white;
padding:12px;
border:2px solid #333;
font-size:16px;
}

/* CELLS */

td{
padding:12px;
border:2px solid #333;
background:#f9fbff;
font-weight:500;
}

/* ROW SHADOW */

tr{
box-shadow:0 3px 8px rgba(0,0,0,0.2);
}

/* INPUT */

input{
width:60px;
padding:6px;
text-align:center;
border-radius:6px;
border:1px solid #777;
}

/* BUTTON */

button{
background:linear-gradient(to right,#3ad16a,#1f9f45);
color:white;
font-size:17px;
border:none;
padding:12px 25px;
border-radius:10px;
cursor:pointer;
box-shadow:0 5px 12px rgba(0,0,0,0.3);
}

button:hover{
transform:scale(1.05);
}

/* TOTAL */

.total{
margin-top:20px;
font-size:22px;
font-weight:bold;
color:#b30000;
}

</style>
</head>

<body>

<div class="container">

<h2>Smart Shopping Cart Simulator</h2>

<table>

<tr>
<th>Product Name</th>
<th>Unit Price (&#8377;)</th>
<th>Quantity</th>
</tr>

<tr>
<td>Premium Pen</td>
<td>50</td>
<td><input type="number" class="qty" data-price="50" value="0" min="0"></td>
</tr>

<tr>
<td>College Notebook</td>
<td>30</td>
<td><input type="number" class="qty" data-price="30" value="0" min="0"></td>
</tr>

<tr>
<td>School Backpack</td>
<td>80</td>
<td><input type="number" class="qty" data-price="80" value="0" min="0"></td>
</tr>

<tr>
<td>Water Bottle</td>
<td>40</td>
<td><input type="number" class="qty" data-price="40" value="0" min="0"></td>
</tr>

<tr>
<td>Pencil Storage Box</td>
<td>60</td>
<td><input type="number" class="qty" data-price="60" value="0" min="0"></td>
</tr>

</table>

<button onclick="calculate()">Calculate Total Cost</button>

<div class="total">
Grand Total Amount = &#8377; <span id="total">0</span>
</div>

</div>

<script>

function calculate(){

let total=0;

document.querySelectorAll('.qty').forEach(function(item){

let qty=parseInt(item.value)||0;
let price=parseInt(item.getAttribute("data-price"));

total += qty * price;

});

document.getElementById("total").innerText=total;

}

</script>

</body>
</html>