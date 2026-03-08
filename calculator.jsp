<!DOCTYPE html>
<html>
<head>
<title>Simple Calculator</title>

<style>
body{
    font-family: Arial;
    background: linear-gradient(135deg,#1f1c2c,#928dab);
    display:flex;
    justify-content:center;
    align-items:center;
    height:100vh;
}

.calculator{
    background:#222;
    padding:25px;
    border-radius:12px;
    box-shadow:0 10px 25px rgba(0, 0, 0, 0.085);
    text-align:center;
}

h2{
    color:white;
}

input{
    width:220px;
    height:45px;
    font-size:22px;
    text-align:right;
    margin-bottom:15px;
    border:none;
    border-radius:8px;
    padding-right:10px;
}

button{
    width:50px;
    height:45px;
    margin:5px;
    font-size:18px;
    border:none;
    border-radius:8px;
    cursor:pointer;
}

.number{
    background:#444;
    color:white;
}

.operator{
    background:#98dd2a;
    color:rgb(8, 6, 6);
}

.equal{
    background:#28a745;
    color:white;
}

.clear{
    background:#dc3545;
    color:white;
}

button:hover{
    opacity:0.85;
}
</style>
</head>

<body>

<div class="calculator">
<h2>Calculator</h2>

<input type="text" id="result" readonly><br>

<button class="number" onclick="addValue('7')">7</button>
<button class="number" onclick="addValue('8')">8</button>
<button class="number" onclick="addValue('9')">9</button>
<button class="operator" onclick="addValue('/')">/</button><br>

<button class="number" onclick="addValue('4')">4</button>
<button class="number" onclick="addValue('5')">5</button>
<button class="number" onclick="addValue('6')">6</button>
<button class="operator" onclick="addValue('*')">*</button><br>

<button class="number" onclick="addValue('1')">1</button>
<button class="number" onclick="addValue('2')">2</button>
<button class="number" onclick="addValue('3')">3</button>
<button class="operator" onclick="addValue('-')">-</button><br>

<button class="number" onclick="addValue('0')">0</button>
<button class="clear" onclick="clearResult()">C</button>
<button class="equal" onclick="calculate()">=</button>
<button class="operator" onclick="addValue('+')">+</button>

</div>

<script>
function addValue(val){
    document.getElementById("result").value += val;
}

function clearResult(){
    document.getElementById("result").value="";
}

function calculate(){
    var x=document.getElementById("result").value;
    document.getElementById("result").value=eval(x);
}
</script>

</body>
</html>